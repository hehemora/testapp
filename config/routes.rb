Rails.application.routes.draw do
  root "pages#mainpage"

  get "/secondpage", to: "pages#secondpage"
  get "/sign_up", to: "users#new"
  post "/sign_up", to: "users#create"
  get "/auth", to: "sessions#new"
  post "/auth", to: "sessions#create"
  get "/quit", to: "sessions#destroy"
  # resources :sessions, only: %i[new create destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
