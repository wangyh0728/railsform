# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.delete_all

20.times do |n|

	product = Faker::Commerce.product_name
	tmp = product.split(" ")
	url = "http://loremflickr.com/100/100/"+tmp[tmp.length-1]+'/all?random='+n.to_s

  Item.new
	Item.create(title: product,
		description: Faker::Lorem.paragraph,
		owner:  Faker::Lorem.paragraph,
		type_id: Faker::Number.digit)
end

Type.delete_all

10.times do |n|

  Type.new
	Type.create(type_id: n,
		title: Faker::Commerce.department(10),
		description: Faker::Lorem.paragraph)
		
end

