class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.integer :company_id

      t.timestamps
    end
    add_index :projects, :company_id
  end
end
