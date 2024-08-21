Rails.application.routes.draw do
  root "pages#login_page"

  get "/main_page", to: "pages#main_page"
  get "/cms/cms_page", to: "cms/pages#cms_page"
  
  # get "/sign_up", to: "users#new"
  # get "/userlistpage", to: "users#show"
  # patch "/user_change_role/:id", to: "users#change"
  # post "/sign_up", to: "users#create"
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
  # get "/new_article", to: "articles#new"
  # post "/save_article", to: "articles#create"
  # get "/articles/:id", to: "articles#show", as: :article
  # patch "/update_article/:id", to: "articles#update", as: :update_article
  
  resources :articles 
  namespace :cms do
    resources :articles do
      patch :publish, on: :member
      patch :savefix, on: :member
    end
  end
  # resources :articles do
  #   patch :publish, on: :member
  #   patch :savefix, on: :member
  # end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end