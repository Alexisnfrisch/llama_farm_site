Rails.application.routes.draw do
  resources :events
  resources :bookings
  get 'animal_profiles' => 'home#animal_profiles'
  get 'booking' => 'bookings#index'
  get 'buy_products' => 'home#buy_products'
  get 'about_us' => 'home#about_us'
  root 'home#index'
  get 'all-users' => 'home#all_users'
  get 'show_user' => 'home#show_user'
  get 'your_profile' => 'home#your_profile'
  get 'events' => 'events#index'
  resources :responses
  resources :comments
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
