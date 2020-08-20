class Garden < ApplicationRecord
  belongs_to :user # owner of garden
  has_one_attached :photo
  has_many :users, through: :bookings # gardens he rents

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
