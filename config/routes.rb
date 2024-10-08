Rails.application.routes.draw do
  root "pages#blank_page"

  get "/main_page", to: "pages#main_page"
  get "/cms/cms_page", to: "cms/pages#cms_page"
  # get "/cms/login_page", to: "cms/pages#login_page"
  
  resources :users
  namespace :cms do
    resources :users do
      get :index, on: :member
      patch :update, on: :member
    end
  end
  get "/auth", to: "sessions#new"
  post "/auth", to: "sessions#create"
  get "/quit", to: "sessions#destroy"

  namespace :api do
    get "articles", to: "articles#index"
    get "article/:id", to: "articles#show"
    get "article", to: "articles#show"
  end

  resources :articles 
  namespace :cms do
    resources :articles do
      patch :publish, on: :member
    end
  end

  namespace :cms do
    resources :pages do
      get :main_page, on: :collection
      get :login_page, on: :collection
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end