class BookingActivity < ApplicationRecord
  belongs_to :booking
  belongs_to :activity
end
