Rails.application.routes.draw do
  get 'home/show_user'
  get 'home/animal_profiles'
  get 'home/booking'
  get 'home/buy_products'
  get 'home/about_us'
  root 'home#index'
  resources :responses
  resources :comments
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
