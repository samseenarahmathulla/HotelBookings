require "rails_helper"

RSpec.describe Hotel, :type => :model do

  describe '#name' do
    
    it "is not valid without a hotel name" do
      hotel = Hotel.new(name: nil)
      expect(hotel).to_not be_valid
    end
    
    it "is valid with a hotel name" do
      hotel = Hotel.new(name: "Five Star Hotel")
      expect(hotel).to be_valid
    end
  end
end