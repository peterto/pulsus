# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :username => 'username1', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please', :lat => '40.745452', :long => '-74.005902', :mood => '0', :venue => 'Cielo Club'
puts 'New user created: ' << user.name
user = User.create! :name => 'Second User', :username => 'username2', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please', :lat => '40.764226', :long => '-73.971462', :mood => '2', :venue => 'Tao Restaurant'
puts 'New user created: ' << user.name
user = User.create! :name => 'Third User', :username => 'username3', :email => 'user3@example.com', :password => 'please', :password_confirmation => 'please', :lat => '40.763771', :long => '-73.997297', :mood => '1', :venue => 'Pacha Club'
puts 'New user created: ' << user.name
user = User.create! :name => 'Fourth User', :username => 'username4', :email => 'user4@example.com', :password => 'please', :password_confirmation => 'please', :lat => '40.722738', :long => '-73.998263', :mood => '3', :venue => 'Balthazar Restaurant'
puts 'New user created: ' << user.name
user = User.create! :name => 'Fifth User', :username => 'username5', :email => 'user5@example.com', :password => 'please', :password_confirmation => 'please', :lat => '40.727259', :long => '-74.003069', :mood => '3', :venue => 'Souen Restaurant Soho'
puts 'New user created: ' << user.name
user = User.create! :name => 'Sixth User', :username => 'username6', :email => 'user6@example.com', :password => 'please', :password_confirmation => 'please', :lat => '40.704196', :long => '-74.009914', :mood => '1', :venue => 'Ulysses A Folk House Restaurant'
puts 'New user created: ' << user.name
user = User.create! :name => 'Seventh User', :username => 'username7', :email => 'user7@example.com', :password => 'please', :password_confirmation => 'please', :lat => '40.727259', :long => '-74.003069', :mood => '3', :venue => 'Souen Restaurant Soho'
puts 'New user created: ' << user.name

question = Question.create! :title => 'Am the life of the party.', :value => '1'
puts 'New question created: ' << question.title
question = Question.create! :title => 'Feel little concern for others.', :value => '-2'
puts 'New question created: ' << question.title
question = Question.create! :title => 'Am always prepared.', :value => '3'
puts 'New question created: ' << question.title
question = Question.create! :title => 'Get stressed out easily.', :value => '-4'
puts 'New question created: ' << question.title
question = Question.create! :title => 'Have a rich vocabulary.', :value => '5'
puts 'New question created: ' << question.title

venue = Venue.create! :name => 'Cielo Club', :lat => '40.745452', :long => '-74.005902', :color => '0', :type => 'Dance_Club', :yelp_url => 'http://www.yelp.com/biz/cielo-new-york'
puts 'New venue created: ' << venue.name
venue = Venue.create! :name => 'Tao Restaurant', :lat => '40.764226', :long => '-73.971462', :color => '2', :type => 'Thai', :yelp_url => 'http://www.yelp.com/biz/tao-new-york-2'
puts 'New venue created: ' << venue.name
venue = Venue.create! :name => 'Pacha Club', :lat => '40.763771', :long => '-73.997297', :color => '1', :type => 'Dance_Club', :yelp_url => 'http://www.yelp.com/biz/pacha-new-york'
puts 'New venue created: ' << venue.name
venue = Venue.create! :name => 'Balthazar Restaurant', :lat => '40.722738', :long => '-73.998263', :color => '3', :type => '', :yelp_url => ''
puts 'New venue created: ' << venue.name
venue = Venue.create! :name => 'Souen Restaurant Soho', :lat => '40.727259', :long => '-74.003069', :color => '3', :type => '', :yelp_url => ''
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Ulysses A Folk House Restaurant', :lat => '40.704196', :long => '-74.009914', :color => '1', :type => 'Regular', :yelp_url => 'http://www.yelp.com/biz/ulysses-folk-house-new-york-2'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Rockwood Music Hall', :lat => '40.722673', :long => '-73.988764', :color => '1', :type => 'Regular', :yelp_url => 'http://www.yelp.com/biz/rockwood-music-hall-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Mercury Lounge', :lat => '40.722478', :long => '-73.986704', :color => '5', :type => 'Regular', :yelp_url => 'http://www.yelp.com/biz/the-mercury-lounge-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Sullivan Hall', :lat => '40.729568', :long => '-74.000137', :color => '5', :type => 'Dance_Hall', :yelp_url => 'http://www.yelp.com/biz/sullivan-hall-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Blue Note', :lat => '40.730999', :long => '-74.000738', :color => '2', :type => 'Jazz_Club', :yelp_url => 'http://www.yelp.com/biz/blue-note-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Cafe Wha?', :lat => '40.730218', :long => '-74.00048', :color => '2', :type => 'Regular', :yelp_url => 'http://www.yelp.com/biz/cafe-wha-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Le Poisson Rouge', :lat => '40.728852', :long => '-74.000137', :color => '6', :type => 'Dance_Hall', :yelp_url => 'http://www.yelp.com/biz/le-poisson-rouge-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Lovin Cup', :lat => '40.718737', :long => '-73.960311', :color => '4', :type => 'Breakfast', :yelp_url => 'http://www.yelp.com/biz/lovin-cup-caf%C3%A9-brooklyn-2'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Sea', :lat => '40.718119', :long => '-73.959882', :color => '6', :type => 'Thai', :yelp_url => 'http://www.yelp.com/biz/sea-thai-restaurant-and-bistro-brooklyn'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Music Hall of Williamsburg', :lat => '40.719225', :long => '-73.961728', :color => '5', :type => 'Dance_Hall', :yelp_url => 'http://www.yelp.com/biz/music-hall-of-williamsburg-brooklyn'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'The Stone', :lat => '40.721372', :long => '-73.981082', :color => '3', :type => 'Jazz_Club', :yelp_url => 'http://www.yelp.com/biz/the-stone-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Nublu', :lat => '40.722608', :long => '-73.979623', :color => '6', :type => 'Dance_Hall', :yelp_url => 'http://www.yelp.com/biz/nublu-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Jules Bistro', :lat => '40.728299', :long => '-73.986061', :color => '3', :type => 'Breakfast', :yelp_url => 'http://www.yelp.com/biz/jules-bistro-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Cake Shop', :lat => '40.720721', :long => '-73.987734', :color => '2', :type => 'Bakery', :yelp_url => 'http://www.yelp.com/biz/cake-shop-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'The Box', :lat => '40.722348', :long => '-73.992283', :color => '0', :type => 'Dance_Hall', :yelp_url => 'http://www.yelp.com/biz/the-box-new-york'
puts 'New venue created: ' << venue.name

venue = Venue.create! :name => 'Bowery Ballroom', :lat => '40.720559', :long => '-73.993739', :color => '6', :type => 'Dance_Hall', :yelp_url => 'http://www.yelp.com/biz/bowery-ballroom-new-york'
puts 'New venue created: ' << venue.name

# user_history = UserHistory.create! :lat => '40.745452', :long => '-74.005902', :mood => '0'
# puts 'New User history created!: ' << user_history.id
# user_history = UserHistory.create! :lat => '40.764226', :long => '-73.971462', :mood => '2'
# puts 'New User history created!: ' << user_history.id
# user_history = UserHistory.create! :lat => '40.763771', :long => '-73.997297', :mood => '1'
# puts 'New User history created!: ' << user_history.id
# user_history = UserHistory.create! :lat => '40.722738', :long => '-73.998263', :mood => '3'
# puts 'New User history created!: ' << user_history.id
# user_history = UserHistory.create! :lat => '40.727259', :long => '-74.003069', :mood => '3'
# puts 'New User history created!: ' << user_history.id
# user_history = UserHistory.create! :lat => '40.704196', :long => '-74.009914', :mood => '1'
# puts 'New User history created!: ' << user_history.id


# answer = Answer.create! :title => 'Am the life of the party.', :value => '1'
# puts 'New question created: ' << answer.title
# question = Question.create! :title => 'Feel little concern for others.', :value => '-2'
# puts 'New question created: ' << answer.title
# question = Question.create! :title => 'Am always prepared.', :value => '3'
# puts 'New question created: ' << answer.title
# question = Question.create! :title => 'Get stressed out easily.', :value => '-4'
# puts 'New question created: ' << answer.title
# question = Question.create! :title => 'Have a rich vocabulary.', :value => '5'
# puts 'New question created: ' << answer.title
