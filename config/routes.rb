Rails.application.routes.draw do
  devise_for :users
  resources :products

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  #authenticated :user do
   # root to: "pages#user_dashboard", as: :authenticated_root
  #end
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'home/about'

  root 'home#index'
end
