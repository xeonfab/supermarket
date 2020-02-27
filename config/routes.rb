Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :superheroes do
    resources :bookings, only: [:create, :show]
  end
  resources :users, only: [:show, :edit, :update, :destroy]

  get 'account/my_superheroes', to:'pages#my_superheroes'
  get 'account/my_bookings', to:'pages#my_bookings'
  get 'account/my_profile', to:'pages#my_profile'
end
