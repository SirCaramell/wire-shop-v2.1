class AddTokenToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :token, :string
    add_index :customers, :token
  end
end
