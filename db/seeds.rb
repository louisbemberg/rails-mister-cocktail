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
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all


puts "2. Opening JSON and parsing it into a ruby hash"
json_string = open(url).read
ruby_hash = JSON.parse(json_string)

puts "3.Creating ingredients"
final_array = []
 ruby_hash["drinks"].each do |ingredient_baby_hash|
  final_array << Ingredient.create!(name: ingredient_baby_hash["strIngredient1"] )
end
puts "Successfully seeded ingredients in the database. :)"
puts "4. You have #{Ingredient.count} ingredients seeded "

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint Leaves")
Ingredient.create(name: "Brown Sugar")
Ingredient.create(name: "White Sugar")
Ingredient.create(name: "Alcohol")

puts "Creating Some Cocktails..."

cocktail_1 = Cocktail.new(name: "Lou's Mojito")
cocktail_1_picture = URI.open('https://images.unsplash.com/photo-1566733971017-f6a46e832e95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
cocktail_1.photo.attach(io: cocktail_1_picture, filename: 'mojito.png', content_type: 'image/png')
dose1_1 = Dose.create!(description: "Add four or five mint leaves for good measure", cocktail: cocktail_1, ingredient: Ingredient.find_by(name: "Mint Leaves"))
dose1_2 = Dose.create!(description: "Add a hefty amount of brown sugar - way more than you think.", cocktail: cocktail_1, ingredient: Ingredient.find_by(name: "Brown Sugar"))
dose1_3 = Dose.create!(description: "Add ice and fill the glass with 1/3 of Rum. You can use 1-3 types of rums combined5", cocktail: cocktail_1, ingredient: Ingredient.find_by(name: "Rum"))
dose1_4 = Dose.create!(description: "Top the rest of the drink with Sprite. You can also use sparkling water for a less sugary feel.", cocktail: cocktail_1, ingredient: Ingredient.find_by(name: "Sprite"))
cocktail_1.save!

cocktail_2 = Cocktail.new(name: "Ellyn's Whiskey")
cocktail_2_picture = URI.open('https://images.unsplash.com/photo-1470337458703-46ad1756a187?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80')
cocktail_2.photo.attach(io: cocktail_2_picture, filename: 'whiskey.png', content_type: 'image/png')
cocktail_2.save!



cocktail_3 = Cocktail.new(name: "Pau's Piña Colada")
cocktail_3_picture = URI.open('https://images.unsplash.com/photo-1582633987110-6b4ca43e9a49?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
cocktail_3.photo.attach(io: cocktail_3_picture, filename: 'ginto.png', content_type: 'image/png')
cocktail_3.save!



cocktail_4 = Cocktail.new(name: "007 Martini Dry")
cocktail_4_picture = URI.open('https://images.unsplash.com/photo-1575023782549-62ca0d244b39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
cocktail_4.photo.attach(io: cocktail_4_picture, filename: 'martinidry.png', content_type: 'image/png')
cocktail_4.save!



cocktail_5 = Cocktail.new(name: "Strawberry Blackout")
cocktail_5_picture = URI.open('https://images.unsplash.com/photo-1557420286-bacad24b4d51?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
cocktail_5.photo.attach(io: cocktail_5_picture, filename: 'strawblackout.png', content_type: 'image/png')
cocktail_5.save!



cocktail_6 = Cocktail.new(name: "Dad's Caipirinha")
cocktail_6_picture = URI.open('https://images.unsplash.com/photo-1580745605325-5a9b36787c61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80')
cocktail_6.photo.attach(io: cocktail_6_picture, filename: 'caipi.png', content_type: 'image/png')
cocktail_6.save!


cocktail_7 = Cocktail.new(name: "Mom's Aperol Spritz")
cocktail_7_picture = URI.open('https://images.unsplash.com/photo-1590271379103-fb6a7d4ad410?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
cocktail_7.photo.attach(io: cocktail_7_picture, filename: 'aperol.png', content_type: 'image/png')
cocktail_7.save!



cocktail_8 = Cocktail.new(name: "The Sasha Bomb")
cocktail_8_picture = URI.open('https://images.unsplash.com/photo-1552611052-dd922d8f9603?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1001&q=80')
cocktail_8.photo.attach(io: cocktail_8_picture, filename: 'sashabomb.png', content_type: 'image/png')
cocktail_8.save!



cocktail_9 = Cocktail.new(name: "Jack's Nectar")
cocktail_9_picture = URI.open('https://images.unsplash.com/photo-1571115637755-71623193e5e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail_9.photo.attach(io: cocktail_9_picture, filename: 'nectar.png', content_type: 'image/png')
cocktail_9.save!



cocktail_10 = Cocktail.new(name: "Dayna's Mimoza")
cocktail_10_picture = URI.open('https://images.unsplash.com/photo-1556063230-aa38680c8142?ixlib=rb-1.2.1&auto=format&fit=crop&w=1651&q=80')
cocktail_10.photo.attach(io: cocktail_10_picture, filename: 'nectar.png', content_type: 'image/png')
cocktail_10.save!

puts "5. You have #{Cocktail.count} cocktails seeded "



