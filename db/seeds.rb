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
user = User.create! :name => 'First User', :username => 'username1', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user = User.create! :name => 'Second User', :username => 'username2', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user = User.create! :name => 'Third User', :username => 'username3', :email => 'user3@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user = User.create! :name => 'Fourth User', :username => 'username4', :email => 'user4@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user = User.create! :name => 'Fifth User', :username => 'username5', :email => 'user5@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user = User.create! :name => 'Sixth User', :username => 'username6', :email => 'user6@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user = User.create! :name => 'Seventh User', :username => 'username7', :email => 'user7@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
