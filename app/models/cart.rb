class Cart < ApplicationRecord
  has_and_belongs_to_many :products, :join_table => :carts_products
end
