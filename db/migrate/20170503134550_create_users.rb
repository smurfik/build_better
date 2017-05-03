class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :company_id
      t.boolean :admin, default: false

      t.timestamps
    end

    add_index :users, :company_id
  end
end
