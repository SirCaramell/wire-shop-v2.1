class Customer < ApplicationRecord
  has_many :carts
  has_many :orders
  validates :first_name, presence: true, length: {in: 3..50}
  validates :last_name, presence: true, length: {in: 3..50}
  validates :password, presence: true, length: {minimum: 6}
  has_secure_password
  has_secure_token

  def invalide_token
    self.update_columns(token: nil)
  end
end
