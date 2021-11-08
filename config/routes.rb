Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  
  # Routes info basica
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  
  # Routes alta
  get '/signup',  to: 'devise/registrations#new'

  # Routes logeo
  get '/login',   to: 'devise/sessions#new'
  post '/login',   to: 'devise/sessions#create'
  delete '/logout',  to: 'devise/sessions#destroy'
  
  # Routes usuarios
  resources :users
  
end
