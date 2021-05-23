class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
    @products = Product.all
  end

  def dashboard
    @products = current_user.products
  end
end
