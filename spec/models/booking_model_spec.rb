require "rails_helper"

RSpec.describe Booking, :type => :model do

  describe '#checkin_date' do
    
    it "is not valid without a checkin date" do
      booking = Booking.new(checkin_date: nil)
      expect(booking).to_not be_valid
    end
  end
  
  describe '#checkout_date' do
    it "is not valid without a checkout date" do
      booking = Booking.new(checkout_date: nil)
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