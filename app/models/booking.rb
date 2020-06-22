class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  
  validates_presence_of :room_in_date
  validates_presence_of :room_out_date, :amount
end