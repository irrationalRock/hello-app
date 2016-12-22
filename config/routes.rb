Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #the default web page should go to the application controller and use goodbye method
  root 'application#hello'
end
