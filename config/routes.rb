Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :phones,  only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, except: [:new, :create, :show]

  namespace :my do
    resources :phones, only: [:index]
  end
end
