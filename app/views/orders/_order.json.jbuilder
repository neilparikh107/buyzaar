json.extract! order, :id, :feedback_comment, :feedback_rating, :buyer_id, :seller_id, :item_id, :created_at, :updated_at
json.url order_url(order, format: :json)
