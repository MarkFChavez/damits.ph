class CreateReferenceNumberPool < ActiveRecord::Migration
  def change
    create_table :reference_number_pools do |t|
      t.column :reference, :string

      t.timestamps
    end
  end
end
