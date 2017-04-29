Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/index'

  get 'contacts' => 'pages#contacts'
  get 'about' => 'pages#about'
  get 'support' => 'pages#support'
  get 'docs' => 'pages#docs'
  

  resources :products
  resources :events
  resources :directions do
    resources :examples
  end

  #resources :examples
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
