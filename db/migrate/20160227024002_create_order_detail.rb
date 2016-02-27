class CreateOrderDetail < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.column :name, :string
      t.column :address, :text
      t.column :email, :string
      t.column :order_id, :integer

      t.timestamps
    end

    add_index :order_details, :order_id
  end
end
