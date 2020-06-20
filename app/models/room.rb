class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings, dependent: :destroy
  validates_presence_of :name, :number_of_guests
  
  
end