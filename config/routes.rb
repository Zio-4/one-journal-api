Rails.application.routes.draw do
  resources :journal_posts
  resources :journals do
    resources :journal_posts, only: [:show]
  end
  resources :users

  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  get "/currentuser", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
