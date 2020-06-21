require "rails_helper"

RSpec.describe Room, :type => :model do

  describe '#name' do
    
    it "is not valid without a room name" do
      room = Room.new(name: nil)
      expect(room).to_not be_valid
    end
    

  end
  
  describe '#number_of_guests' do
    
    it "is not valid without a room number_of_guests" do
      room = Room.new(number_of_guests: nil)
      expect(room).to_not be_valid
    end
    
    
  end
end