class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates_presence_of :checkin_date, :checkout_date, :amount
end