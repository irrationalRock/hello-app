Rails.application.routes.draw do

  root 'static_pages#home'
  get '/signup', to: 'users#new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  post '/signup',  to: 'users#create'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #the default web page should go to the application controller and use goodbye method
end
