class BookingTransport < ApplicationRecord
  belongs_to :booking
  belongs_to :transport
end
