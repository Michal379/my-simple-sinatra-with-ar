puts "🌱 Seeding games..."
Game.destroy_all
User.destroy_all
background_jewel_url = "https://i.pinimg.com/564x/18/0d/ff/180dffaa23dd263c714ba4a03d7f6b34.jpg"

Game.create([
  { name: "background jewel",
    price: 4500,
    image_url: background_jewel_url
   },

  { 
    name: "Volleyball",
    price: 5500,
    image_url: "https://i.pinimg.com/564x/c6/d9/2f/c6d92f95600016d254b96114e065841d.jpg" },

  { name: "Football",
    price: 6600,
    image_url: "https://i.pinimg.com/564x/a2/9e/50/a29e50bc87a6331d1480fea7043ee30c.jpg" },

  {  name: "Hockey",
     price: 7700,
     image_url: "https://i.pinimg.com/564x/62/02/e3/6202e3ab7edc52b10e6923e7b0b0072e.jpg" },

  { name: "Basketball",
    price: 8800,
    image_url: "https://i.pinimg.com/564x/90/8e/ac/908eace752417abeb978995b5e5a0495.jpg" }
])

require 'faker'

5.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    identity: Faker::IDNumber.valid,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164
  )
end

puts "✅ Done seeding!"
