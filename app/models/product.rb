class Product < ApplicationRecord
  has_and_belongs_to_many :orders, :join_table => :orders_products
  has_and_belongs_to_many :carts, :join_table => :carts_products
end
