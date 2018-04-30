Rails.application.routes.draw do



  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contract', to: 'static_pages#contract'

  get 'users/show' 

  

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'


  
  root 'static_pages#home'
  #root 'application#hello' 

  resources :users do
    member do
      get :following, :followers
    end
  end
<<<<<<< HEAD
=======


  get "search(/:search)", to: "searches#index", as: :search
  
>>>>>>> 04333373e84046df3c81b8c0c6af9e7534cf292d
  resources :users
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
