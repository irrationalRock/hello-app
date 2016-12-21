Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #the default web page should go to the application controller and use goodbye method
  root 'application#goodbye'
end
