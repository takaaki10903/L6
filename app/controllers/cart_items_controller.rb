class CartItemsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @cart_item = CartItem.new
  end
  
  def create
    @product = Product.find(params[:cart_item][:product_id])
    @cart_item = CartItem.new(qty: params[:cart_item][:qty], product_id: params[:cart_item][:product_id], cart_id: params[:cart_item][:cart_id])
    
    if @cart_item.save
      redirect_to current_cart
    else
      flash[:notice] = '1つ以上の整数の数を指定してください'
      render 'new'
    end
  end
  
  def destroy
    @cart_item = CartItem.find(params[:id])
    if @cart_item.destroy
    else
      flash[:notice] = '削除できていません'
    end
    redirect_to current_cart
  end
end
