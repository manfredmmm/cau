set_default :memcached_memory_limit, 64

namespace :memcached do
  desc "Install Memcached"
  task :install, roles: :app do
    run "#{sudo} apt-get install memcached", :pty => true do |ch, stream, data|
      if data =~ /Do you want to continue \[Y\/n\]\?/
        #prompt, and then send the response to the remote process
        ch.send_data(Capistrano::CLI.password_prompt("Press enter to continue:") + "\n")
      else
        #use the default handler for all other text
        Capistrano::Configuration.default_io_proc.call(ch,stream,data)
      end
    end
  end
  after "deploy:install", "memcached:install"

  desc "Setup Memcached"
  task :setup, roles: :app do
    template "memcached.erb", "/tmp/memcached.conf"
    run "#{sudo} mv /tmp/memcached.conf /etc/memcached.conf"
    restart
  end
  after "deploy:setup", "memcached:setup"

  %w[start stop restart].each do |command|
    desc "#{command} Memcached"
    task command, roles: :app do
      run "#{sudo} service memcached #{command}"
    end
  end
end
