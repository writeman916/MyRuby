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
  resources :users
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
