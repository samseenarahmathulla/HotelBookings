require "rails_helper"

RSpec.describe Booking, :type => :model do

  describe '#room_in_date' do
    
    it "is not valid without a room_in_date" do
      booking = Booking.new(room_in_date: nil)
      expect(booking).to_not be_valid
    end
  end
  
  describe '#room_out_date' do
    it "is not valid without a room_out_date" do
      booking = Booking.new(room_out_date: nil)
      expect(booking).to_not be_valid
    end
  end
  
  describe '#amount' do
    it "is not valid without an amount" do
      booking = Booking.new(amount: nil)
      expect(booking).to_not be_valid
    end
  end

  

end