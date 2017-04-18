class ProductController < ApplicationController

before_filter only: [:new, :create]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  end

  def create
    @product = Product.new(direction_params)
    
    if @product.save
      redirect_to new_product_path
    else
      render action: 'new'
    end
  end

  def edit
    @product = product.find(params[:id])
  end

  def update
    @product = product.find(params[:id])

    if @product.update(product_params)
      redirect_to new_product_path
    else
      render action: 'edit'
    end    
  end

  def destroy
    @product = product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :content, :thumbnail)
  end

end
