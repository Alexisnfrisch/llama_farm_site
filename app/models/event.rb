class Event < ApplicationRecord
	has_many :bookings, dependent: :destroy
	has_many :users, through: :bookings

	has_one :image
  	mount_uploader :image, ImageUploader
end
