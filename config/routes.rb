Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  get 'home/contacts'
  get 'home/about'
  get 'home/support'
  get 'home/examples'
  get 'home/docs'

  resources :products
  resources :events
  resources :applications
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
