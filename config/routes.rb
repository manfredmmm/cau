Cau::Application.routes.draw do
  root to: "welcome#index"
  match "noticia/:slug", to: "welcome#noticia", as: "noticia"

  namespace :admin do
    root to: "admin#index"
    resources :sections
    resources :readings
    resources :slideshows do
      resources :slides
    end
  end
end
