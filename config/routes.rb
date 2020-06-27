Rails.application.routes.draw do
  get 'home', to: 'embroideries#home'
  get 'about', to: 'embroideries#about'
  root 'embroideries#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
