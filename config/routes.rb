Cau::Application.routes.draw do

  root to: "welcome#index"

  namespace :admin do
    root to: "sections#index"
    resources :sections
  end
end
