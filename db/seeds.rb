# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'VIP' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name
user.add_role :admin
user2.add_role :VIP
puts 'BUILDING A CAR'
Car.create(
  :id => 1,
  :name => 'mercedes',
  :purchased_on => Time.new(2011,11),
  :user_id => 1,
  :price => 10000,
  :year => 1998
)
puts 'GENERATING SHOP'
Shop.create(
  :id => 1,
  :name => 'Les Schwab',
  :city => 'Seattle',
  :state => 'WA'
)
puts 'GENERATING PARTS'
Work.create(
  :id => 1,
  :component => 'Tires'
)
puts 'PERFORMING MAINTENANCE'
Maintenance.create(
  :id => 1,
  :shop_id => 1,
  :cost => 1200,
  :car_id => 1
)
