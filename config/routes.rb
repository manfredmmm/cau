Cau::Application.routes.draw do

  root to: "welcome#index"

  namespace :admin do
    resources :news_items
    resources :settings
  end
end
