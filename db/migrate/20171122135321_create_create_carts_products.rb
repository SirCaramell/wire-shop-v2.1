class CreateCreateCartsProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :create_carts_products, id: false do |t|
      t.integer :quantity
      t.belongs_to :cart, index: true
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
