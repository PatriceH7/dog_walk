# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
DogSitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

3.times do |index|
	City.create!(name: ["Paris", "Lyon", "Marseille"].sample)
end
puts "3 villes créées."

10.times do |index|
	DogSitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(from: City.first.id, to: City.last.id))
end
puts "10 dog_sitters créés."

20.times do |index|
	Dog.create!(name: Faker::Creature::Dog.name, city_id: Faker::Number.between(from: City.first.id, to: City.last.id))
end
puts "20 dogs créés."

100.times do |index|
	Stroll.create!(date: Faker::Date.between(from: 30.days.ago, to: Date.today), dog_sitter_id: Faker::Number.between(from: DogSitter.first.id, to: DogSitter.last.id), dog_id: Faker::Number.between(from: Dog.first.id, to: Dog.last.id))
end
puts "100 strolls créés."



