class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :price, :decimal
    end
  end
end
