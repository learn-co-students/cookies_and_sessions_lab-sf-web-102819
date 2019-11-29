class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #allows view to see the cart
  helper_method :cart

  def current_cart
    session[:cart] ||= []
  end

  #should have moved line 8 stuff inside cart method
  def cart
    current_cart
  end
end
