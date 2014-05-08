Cau::Application.routes.draw do
  root to: "welcome#index"
  namespace :admin do
    root to: "admin#index"
    resources :sections
    resources :readings
    resources :slideshows do
      resources :slides
    end
  end
end
