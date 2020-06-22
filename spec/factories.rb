FactoryGirl.define do 
      factory :user do
        name                  "Hayz G"
        email                 "hayzed2@example.com"
        password              "foobar"
        password_confirmation "foobar"
      end
      
      factory :booking do
        room_in_date      "2020-03-06"
        room_out_date     "2020-03-09"
        amount            "100"
      end
      
      factory :room do
        name "Deluxe Room"
        number_of_guests 4
        price 100
      end
      
      factory :hotel do
        name "Bay View Hotel"
      end
    end