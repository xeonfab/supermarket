Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :superheroes do
    resources :bookings, only: :create
  end
  resources :users, only: [:show, :edit, :update, :destroy]

  get 'pages/my_superheroes', to:'pages#my_superheroes'

end
