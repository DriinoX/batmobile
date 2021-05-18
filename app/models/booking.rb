class Booking < ApplicationRecord
  belongs_to :phone
  belongs_to :user
  validates :start_booking, :user, :phone, :end_booking, presence: true
end
