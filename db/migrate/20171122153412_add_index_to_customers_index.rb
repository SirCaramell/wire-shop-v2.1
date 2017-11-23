class AddIndexToCustomersIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :customers, :index, unique: true
  end
end
