Rails.application.routes.draw do
root 'embroideries#home'
  get '/contact', to: 'embroideries#contact'
  get '/home', to: 'embroideries#home'
  get '/yarn', to: 'embroideries#yarn'
  get '/about', to: 'embroideries#about'
  get '/list', to: 'embroideries#list'
  post '/yarn', to: 'embroideries#create'
  delete '/list', to: 'embroideries#destroy'
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
