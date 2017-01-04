class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  def hello
    render html: "¡Hola, mundo!"
  end

  def goodbye
  	render html: "good night!"
  end

  
end
