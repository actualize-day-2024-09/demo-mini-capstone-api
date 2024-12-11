class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 1..5000 }

  has_many :category_products
  has_many :categories, through: :category_products
  # def categories
  #   category_products.map do |category_product|
  #     Category.find_by(id: category_product.category_id)
  #   end
  # end

  has_many :carted_products
  has_many :orders, through: :carted_products

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

  belongs_to :supplier
  # validates :supplier_id, presence: true
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  def primary_image_url
    if images.length > 0
      images[0].url
    else
      "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg"
    end
  end
end
