class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, ImagesUploader

  validates :first_name, :last_name, :street_name, :street_number, :suburb, :state, :postcode, :country, presence: true

  def full_address
    [street_number, street_name, suburb, postcode, country].compact.join(',')
  end

  geocoded_by :full_address
  after_validation :geocode

end
