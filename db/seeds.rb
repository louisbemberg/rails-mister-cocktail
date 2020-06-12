# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

puts "1 - Cleaning Database"
Ingredient.destroy_all

puts "2. Opening JSON and parsing it into a ruby hash"
json_string = open(url).read
ruby_hash = JSON.parse(json_string)

puts "3.Creating ingredients"
final_array = []
 ruby_hash["drinks"].each do |ingredient_baby_hash|
  final_array << Ingredient.create!(name: ingredient_baby_hash["strIngredient1"] )
end
puts "Successfully seeded ingredients in the database. :)"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "Brown sugar")
Ingredient.create(name: "Alcohol")

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Gin Tonic")
Cocktail.create(name: "James Bond's Martini")

puts "5. You have #{Ingredient.count} ingredients seeded "
