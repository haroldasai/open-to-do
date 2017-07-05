# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#if ENV["user"]
	6.times do
		User.create!(
	  		name:     Faker::Name.name,
	    	email:    Faker::Internet.unique.email,
	    	password_digest: Faker::Crypto.md5
		)
	end
#end

users = User.all

#if ENV["list"]
	users.each do |user|
		List.create!(
	  		name:     Faker::Date.between(7.days.ago, Date.today),
	    	user_id:  user.id,
	    	private:  false   
		)
	end
#end		

lists = List.all

#if ENV["item"]
	lists.each do |list|
		6.times do 
			Item.create!(
	  			name:     Faker::Book.title,
	    		list_id:  list.id
			)
		end	
	end
#end	

puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"