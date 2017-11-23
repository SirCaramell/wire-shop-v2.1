class Order < ApplicationRecord
  has_and_belongs_to_many :products, :join_table => :orders_products
  belongs_to :worker
  belongs_to :customer
end
