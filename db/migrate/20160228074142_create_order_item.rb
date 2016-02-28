class CreateOrderItem < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.column :order_id, :integer
      t.column :product_id, :integer

      t.timestamps
    end

    add_index :order_items, [:order_id, :product_id]
  end
end
