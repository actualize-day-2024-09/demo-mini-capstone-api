class Product < ApplicationRecord
  TAX_RATE = 0.09

  def is_discounted?
    price <= 10
  end

  def tax
    price * TAX_RATE
  end

  def total
    price + tax
  end
end
