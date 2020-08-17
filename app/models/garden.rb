class Garden < ApplicationRecord
  belongs_to :user # owner of garden

  has_many :users, through: :bookings # gardens he rents
end
