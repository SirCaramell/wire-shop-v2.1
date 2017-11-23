class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.float :brutto_price
      t.float :netto_price
      t.string :category
      t.string :ean
      t.string :image
      t.string :product_name
      t.integer :quantity_in_stock
      t.string :text_description

      t.timestamps
    end
  end
end
