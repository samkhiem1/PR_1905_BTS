Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
<<<<<<< HEAD
=======
  get  '/support',    to: 'static_pages#support'
>>>>>>> fb8a306982d09cf1ea01c05b889161b6f49b95e5
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :users
<<<<<<< HEAD
end
=======
end
>>>>>>> fb8a306982d09cf1ea01c05b889161b6f49b95e5
