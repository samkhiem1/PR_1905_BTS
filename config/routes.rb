Rails.application.routes.draw do
  root   'tours#index'
  get  '/support',    to: 'static_pages#support'
  get    '/help',     to: 'static_pages#help'
  get    '/about',    to: 'static_pages#about'
  get    '/contact',  to: 'static_pages#contact'
  get    '/signup',   to: 'users#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'

  resources :users, only: [:index, :create, :new, :show,:edit, :update]

  resources :tours, only: [:index, :show] do
    resources :bookings, only: [:create, :destroy]
  end
  namespace :admin do
    resources :users
    resources :tours
  end
end
