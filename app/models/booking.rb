class Booking < ApplicationRecord
  belongs_to :hotel
  belongs_to :room
  belongs_to :flight
end
