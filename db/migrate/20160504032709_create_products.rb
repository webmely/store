class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :thumbnail
      t.decimal :price_current, precision: 12, scale: 3
      t.decimal :price, precision: 12, scale: 3
      t.boolean :active
      t.text :description
      t.text :short_description

      t.timestamps null: false
    end
  end
end
