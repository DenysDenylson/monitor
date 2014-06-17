class ApplicationController < ActionController::Base #controlador principal
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = "Acceso Denegado"
  	redirect_to root_url, :alert => exception.message #poner la vista dond se qiere 
  end
end
