class ProductsController < ApplicationController
  before_action :find_product
  def show
  end

  def update
  end

  private
  def find_product
    @product = Product.find_by_id params[:id]
  end
end
