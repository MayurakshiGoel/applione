# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
	Blog.create!(
		title: "My Blog post #{blog}",
		body: "The data associated with blog #{blog}"
		)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		title: "Rails skill #{skill}",
		percent_utilized: "#{skill}" 
		)
end

puts "5 skills created"

9.times do |portfolio_items|
	Portfolio.create!(
		title: "Rails portfolio title: #{portfolio_items}",
		subtitle: "Portfolio portion",
		body: "The data associated with portfolio #{portfolio_items}",
		main_image: "aaaa",
		thumb_image: "https://qph.fs.quoracdn.net/main-qimg-55a3251fd71180bffcc4896a89541943-lq"
		)
end

puts "9 portfolio created"
