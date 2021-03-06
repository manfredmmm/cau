require './config/boot'

require "bundler/capistrano"
require 'capistrano-rbenv'

load "config/recipes/base"
load "config/recipes/nginx"
load "config/recipes/postgres"
load "config/recipes/unicorn"
load "config/recipes/check"
load "config/recipes/carrierwave"

# Bonus! Colors are pretty!
def red(str)
  "\e[31m#{str}\e[0m"
end

# Figure out the name of the current local branch
def current_git_branch
  branch = `git symbolic-ref HEAD 2> /dev/null`.strip.gsub(/^refs\/heads\//, '')
  puts "Deploying branch #{red branch}"
  branch
end

server "188.166.7.76", :cau, :app, :db, :web, primary: true
set :rails_env, "production"
set :server_name, "cau"
ssh_options[:port] = 37546

set :default_environment, {
    'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}
set :bundle_flags, "--deployment --quiet --binstubs --shebang ruby"
set :rbenv_ruby_version, "1.9.3-p545"

set :user, "deployer"
set :application, "cau"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:manfredmmm/#{application}"
set :branch, current_git_branch

set :stages, %w(production)
set :default_stage, "production"

set :maintenance_template_path, File.expand_path("../recipes/templates/maintenance.html.erb", __FILE__)

default_run_options[:shell] = '/bin/zsh'
default_run_options[:pty] = true
ssh_options[:forward_agent] = true

namespace :deploy do
  namespace :assets do
    desc "Precompile assets on local machine and upload them to the server."
    task :precompile, roles: :web, except: {no_release: true} do
      run_locally "bundle exec rake assets:precompile RAILS_ENV=production"
      find_servers_for_task(current_task).each do |server|
        run_locally "rsync -vr --exclude='.DS_Store' -e 'ssh -p #{ssh_options[:port]}' public/assets #{user}@#{server.host}:#{shared_path}/"
      end
      run_locally "rm -rf public/assets"
    end
  end
end

after "deploy", "deploy:cleanup" # keep only the last 5 releases
