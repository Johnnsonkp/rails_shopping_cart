class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :brand
      t.text :description
      t.string :condition
      t.string :title
      t.decimal :price, precision: 5, scale:2, default: 0
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
