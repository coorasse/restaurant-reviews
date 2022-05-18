require 'faker'
puts "Started seeding..."

100.times do
  restaurant = Restaurant.create!(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    rating: rand(1..5),
    chef_name: ['Alain Ducasse', 'Pierre Gagnaire', 'Martin Berasategui', 'Yannick Alleno', 'Anne-Sophie Pic'].sample
  )
  puts "Created restaurant #{restaurant.name}"
end

puts "Finished seeding!"
