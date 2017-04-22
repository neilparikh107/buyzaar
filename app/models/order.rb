class Order < ApplicationRecord
  belongs_to :item
  # I am on the orders table, I am looking for my buyer which is a User
  # I need to look at the buyer_id (which is a user) to find my buyer
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"
  # I am on the orders table, I am looking for my seller which is a User
  # I need to look at the seller_id (which is a user) to find my seller
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
end
