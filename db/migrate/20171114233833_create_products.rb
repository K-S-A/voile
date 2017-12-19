class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :slug
      t.references :product_group, foreign_key: true
      # t.string :name, null: false
      t.string :name
      t.text :description
      t.string :code, null: false
      t.date :receipt_date
      t.integer :stock_balance
      t.string :rack
      t.string :row
      t.string :shelf
      t.monetize :price
      t.monetize :sale_price
      t.monetize :calculated_price
      t.monetize :purchase_price
      t.text :comment
      t.integer :height
      t.integer :total_amount
      t.string :showcase
      t.string :measured
      t.string :workshop
      t.string :ratio
      t.text :hidden_comments
      t.string :manufacturer
      t.string :category
      t.string :db_date
      t.integer :remaining
      t.integer :manual_correction
      t.datetime :deleted_at, default: nil
      t.string :s
      t.string :t
      t.string :u
      t.string :x
      t.string :y
      t.string :z
      t.string :aa
      t.string :ad

      # t.timestamps
    end
    add_index :products, %i[code name], unique: true
  end
end
