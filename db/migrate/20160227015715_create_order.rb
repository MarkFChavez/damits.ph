class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.column :payment_method, :string
      t.column :state, :string
      t.timestamps
    end
  end
end
