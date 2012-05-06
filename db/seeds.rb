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
