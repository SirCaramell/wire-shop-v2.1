class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :adress
      t.string :city
      t.string :email
      t.string :postal_code

      t.timestamps
    end
  end
end
