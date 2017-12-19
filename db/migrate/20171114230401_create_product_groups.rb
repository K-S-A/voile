class CreateProductGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :product_groups do |t|
      t.string :slug
      t.string :name, null: false
      t.string :description
      t.datetime :deleted_at, default: nil

      t.timestamps
    end
    add_index :product_groups, :slug, unique: true
  end
end
