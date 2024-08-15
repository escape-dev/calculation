Rails.application.routes.draw do
   devise_for :users, path: '', path_names: {
     sign_in: 'login',
     sign_out: 'logout',
     password: 'password',
     confirmation: 'confirmation',
     registration:'register',
   }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords'
  }
  
  root "welcome#index"

  get "/home", to: "home#index", as: :homepage
  
  resources :categories, except: %i[ show ]
end
