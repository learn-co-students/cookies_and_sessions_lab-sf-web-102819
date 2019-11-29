class ProductsController < ApplicationController
  def index
  end

  def add
    cart << params[:product]
    # byebug
    render :index
  end

end