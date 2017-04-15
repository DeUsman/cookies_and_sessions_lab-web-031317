class ProductsController < ApplicationController

  def index
  	@cart = cart
  end

  def show 

  end

  def add

    if(params[:product].blank?)
      flash[:notice] = "Product Field cannot be blank."
      redirect_to products_path
    else 
      cart.push(params[:product])
	    flash[:notice] = "Item was added successfuly"
      redirect_to products_path
    end
  end

  def destroy 
    cart.delete(params[:product])
    flash[:notice] = "#{params[:product]} was removed from your cart"
    redirect_to products_path
  end

end
