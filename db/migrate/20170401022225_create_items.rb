class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :category
      t.text :description
      t.integer :quantity
      t.integer :rating
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
