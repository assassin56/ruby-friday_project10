# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |product|
  product = Product.create!(
    name: Faker::Food.ingredient, 
    cost: Faker::Number.within(range: 10..30),
    country: Faker::WorldCup.team)
  
  10.times do |review|
    Review.create!(author: Faker::FunnyName.two_word_name, 
    content_body: Faker::Lorem.characters(number: 55),
    rating: rand(1..5),
    product_id: product.id
    )
  end
end
