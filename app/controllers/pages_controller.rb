class PagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def search
    @products = Product.search(params[:search])
  end

end
