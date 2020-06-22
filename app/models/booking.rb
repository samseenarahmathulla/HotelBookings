class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  
  attr_accessor :checkin_date
  validates_presence_of :checkin_date
  validates_presence_of :checkout_date, :amount
end