# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name( :name => role )
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin
user2 = User.find_or_create_by_email :name => 'Free Student', :email => 'user2@example.com', :password => 'changeme', :password_confirmation => 'changeme'
user2.add_role :free_iosbc
user3 = User.find_or_create_by_email :name => 'iOS Bootcamp Student', :email => 'user3@example.com', :password => 'changeme', :password_confirmation => 'changeme'
user3.add_role :iosbc
user4 = User.find_or_create_by_email :name => 'Platinum Student', :email => 'user4@example.com', :password => 'changeme', :password_confirmation => 'changeme'
user4.add_role :platinum
puts "users: #{user2.name}, #{user3.name}, #{user4.name}"