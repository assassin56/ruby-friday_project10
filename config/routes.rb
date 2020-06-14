Rails.application.routes.draw do
  root to: 'site#home'
  
  get 'signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/home', to: 'site#home'
  resources :products do
    resources :reviews
  end
end
