class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end

    add_index :addresses, [:addressable_id, :addressable_type]
  end
end
