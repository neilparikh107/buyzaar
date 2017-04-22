class Item < ActiveRecord::Base
  belongs_to :user
  has_one :order 

  mount_uploader :image, ImagesUploader
end
