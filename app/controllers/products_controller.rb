class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render template: "products/index"
  end

  def first_product
    @product = Product.find_by(id: 1)
    render template: "products/show"
  end

  def second_product
    @product = Product.find_by(id: 2)
    render template: "products/show"
  end

  def third_product
    @product = Product.find_by(id: 3)
    render template: "products/show"
  end
end
