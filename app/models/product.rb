class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 1..5000 }

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
