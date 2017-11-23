class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :oder_r_id
      t.date :order_date
      t.integer :order_quantity
      t.date :shipment_date
      t.string :status

      t.timestamps
    end
  end
end
