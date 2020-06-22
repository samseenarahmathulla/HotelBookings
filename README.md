# HOTEL BOOKINGS

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover: Ruby On Rails is used to develop this web api.

* Ruby version: ruby 2.7.1p83

* Rails version: 6.0.3.2

* Database creation
  Terminal commands:
  
  Database used is PostgreSQL and in development mode , the database is called: HotelBooking_development
  #To create the database
  rails db:create
  #To create the respective columns and tables
  rails db:migrate
  #The Database is populated with 5 hotels and around 15rooms for those hotels.
  rails db:seed
  
  All the migration files for the database can be found in db/migrate folder.
  The main tables are: Users table, Hotels table, Rooms table,and Bookings Table.
  The relationships between these tables can be found in corresponding model files.



* How to run the test
  Rspec is used for testing. The necessary gems for the same is added to the Gemfile.
  
  They are:
  gem 'rspec-rails', '~> 4.0.0'
  gem 'rails-controller-testing'
  gem 'capybara'
  gem 'factory_girl_rails', '~> 3.2.0'
  
  The rspect tests are done for controller files,model files and the sign in feature.
  There are 25 examples and all passed.
  They can be found inside spec folder and run  in terminal using: rspec spec
  #TODO: The testing for views and other related files.
  
  
* Front end development: 
  Bootstrap is used for a responsive design.
  Checkin and checkout dates are implemented using bootstrap datetimepicker.
  jQuery is also added for the same,
  Use yarn/npm to install those packages.
  For the landing page, the theme from https://github.com/StartBootstrap/startbootstrap-one-page-wonder is used.
  
*  Authentication:
  For authentication - devise gem is used and installed. gem 'devise" - Refer Gemfile.
  The "name" and "phone number" fields in Users table are added as extra parameters to the devise.
  Check configure_permitted_parameters method in application_controller.rb
  #TODO: wider use of devise by using default model methods and configuring more.Also mailers can be configured and send according to the use case.
  
* Deployment instructions
  Capistrano gems are used for deployment.
  gem "capistrano", "~> 3.7"
  gem "capistrano-rails", "~> 1.2"
  gem "capistrano-passenger", "~> 0.2.0"
  gem "capistrano-yarn"
  #Add this if you"re using rbenv
  gem "capistrano-rbenv", "~> 2.1"
  
  
  To Install:
  bundle install 
  cap install STAGES=production
  When deploying to server - Edit the 2 files and fill the server details in: config/deploy.rb and config/deploy/production.rb
  Once done, Run the following command in terminal:
  cap production deploy
  
  This deploys all our code referenced from git to the server.
  The server should be configured with nginx, passenger and all the other required libraries.

* Working of the web api:
   When the application runs,
   1. The landing page is shown. Ths page shows a nice view page with a form to fill in:
   The destination, checkin date, checkout date and number of guests.
   The destination is now kept as a field alone and doesn't have much significance.
   #TODO: The location fields have to set up in Hotels table and depending on that the destination will autocomplete and user can select his destination.
   On click of the "search" button - the next page loads.
   2. The 2nd page is hotels listing page. For now it shows all hotels irrespective of the dates and location.
   #TODO: The hotels listing should be based on a search query where: the hotels have to be selected depending on the location and the dates,
   ie.only the hotels that have rooms available within the checkin and checkout dates should be displayed.
   On click of the "Check our rooms" link - takes to the 3rd page.
   3. The 3rd page is the rooms listing page - It shows all the rooms of the selected hotel.
   The desired room can be booked by clicking on the "Book Your Room" button.
   For now,on click of the button user authentication is checked and if they are not logged in, they are
   redirected to the sign up / login page.Once done with the authentication, user is redirected to the 3rd page and we can continue our booking.
   #TODO: To implement payment gateway and take to another page, where the booking details can be seen and confirmed.
   4. The 4th page is bookings view page - User can view their bookings/orders. Once booking is successfull, user is redirected to this page
   else user is redirected to the landing page.
   #TODO: Improve the design and fix the style issues
   
* TODO: All the TODOS are marked, inorder to understand that implementation done so far is basic one and it can be modified and developed
even much more.