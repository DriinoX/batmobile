Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :phones,  only: [:index, :show] do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, except: [:new, :create, :show]
end
