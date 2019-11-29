class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def add
        # Load the cart from the session, or create a new empty cart.
        cart << params[:product]
        
        # Save the cart in the session.
        # session[:cart] = cart
        # byebug
        render :index
    end



end
