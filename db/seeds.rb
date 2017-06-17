require 'json'
require 'open-uri'




if Section.count == 0
  %w(Breakfast Lunch Dinner Drinks).each do |name|
    Section.create(name: name)
  end
end

10.times do |i|
  FoodItem.create!(
              name: Faker::Food.ingredient,
              description: Faker::Food.ingredient,
              price: Faker::Number.decimal(2),
              section_id: Section.first.id
  )
  end

10.times do |i|
  FoodItem.create!(
      name: Faker::Food.ingredient,
      description: Faker::Food.ingredient,
      price: Faker::Number.decimal(2),
      section_id: Section.second.id
  )
end

10.times do |i|
  FoodItem.create!(
      name: Faker::Food.ingredient,
      description: Faker::Food.ingredient,
      price: Faker::Number.decimal(2),
      section_id: Section.third.id
  )
end

10.times do |i|
  FoodItem.create!(
      name: Faker::Food.ingredient,
      description: Faker::Food.ingredient,
      price: Faker::Number.decimal(2),
      section_id: Section.fourth.id
  )
end