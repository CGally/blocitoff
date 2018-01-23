# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  User.create!(
    name: Faker::RickAndMorty.character,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    private: false
  )
end

users = User.all

20.times do
  Item.create!(
    user: users.sample,
    name: Faker::Witcher.monster
  )
end

puts "Seeds finished!"
puts "#{User.count} users created!"
puts "#{Item.count} to-dos created!"
