class AddReferenceNumberOnOrder < ActiveRecord::Migration
  def change
    add_column :orders, :reference_number, :string
    add_index :orders, :reference_number
  end
end
