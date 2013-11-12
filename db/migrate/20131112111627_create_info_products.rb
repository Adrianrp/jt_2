class CreateInfoProducts < ActiveRecord::Migration
  def change
    create_table :info_products do |t|
      t.string :title
      t.text :description
      t.integer :image_id
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
