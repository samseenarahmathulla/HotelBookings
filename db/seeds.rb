# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Hotel.create! name: "Holiday Inn"
Hotel.create! name: "Bay View Hotel"
Hotel.create! name: "Hotel International"
Hotel.create! name: "Equatorial Hotel"
Hotel.create! name: "Hard Rocks hotel"

@hotel_1 = Hotel.find_by_name("Holiday Inn");
@hotel_2 = Hotel.find_by_name("Bay View Hotel");
@hotel_3 = Hotel.find_by_name("Hotel International");
@hotel_4 = Hotel.find_by_name("Equatorial Hotel");
@hotel_5 = Hotel.find_by_name("Hard Rocks hotel");

Room.create! name: "Deluxe Room", hotel_id: @hotel_1.id, number_of_guests: 2, price: 200
Room.create! name: "Deluxe Room", hotel_id: @hotel_2.id, number_of_guests: 2, price: 200
Room.create! name: "Deluxe Room", hotel_id: @hotel_3.id, number_of_guests: 2, price: 200
Room.create! name: "Deluxe Room", hotel_id: @hotel_4.id, number_of_guests: 2, price: 200
Room.create! name: "Deluxe Room", hotel_id: @hotel_5.id, number_of_guests: 2, price: 200
Room.create! name: "Suite Room", hotel_id: @hotel_1.id, number_of_guests: 4, price: 400
Room.create! name: "Suite Room", hotel_id: @hotel_2.id, number_of_guests: 4, price: 400
Room.create! name: "Suite Room", hotel_id: @hotel_3.id, number_of_guests: 4, price: 400
Room.create! name: "Suite Room", hotel_id: @hotel_4.id, number_of_guests: 4, price: 400
Room.create! name: "Suite Room", hotel_id: @hotel_5.id, number_of_guests: 4, price: 400
Room.create! name: "Economy Room", hotel_id: @hotel_1.id, number_of_guests: 3, price: 250
Room.create! name: "Economy Room", hotel_id: @hotel_2.id, number_of_guests: 3, price: 250
Room.create! name: "Economy Room", hotel_id: @hotel_3.id, number_of_guests: 3, price: 250
Room.create! name: "Economy Room", hotel_id: @hotel_4.id, number_of_guests: 3, price: 250
Room.create! name: "Economy Room", hotel_id: @hotel_5.id, number_of_guests: 3, price: 250
