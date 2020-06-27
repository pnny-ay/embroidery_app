Rails.application.routes.draw do
  get '/home', to: 'embroideries#home'
  get '/about', to: 'embroideries#about'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  root 'embroideries#home'
    resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
