class ProductsController < ApplicationController
  def index
    @products = Product.all 
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(name: params[:product][:name], price: params[:product][:price])
    if @product.save
      redirect_to root_path
    else
      flash[:notice] = '空白は禁止です'
      render 'new'
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
    else
      flash[:notice] = '商品を削除できませんでした'
    end
    redirect_to products_path
  end
end
