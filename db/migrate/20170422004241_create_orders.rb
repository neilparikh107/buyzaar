class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :feedback_comment
      t.integer :feedback_rating
      t.integer :buyer_id
      t.integer :seller_id
      t.integer :item_id

      t.timestamps
    end
  end
end
