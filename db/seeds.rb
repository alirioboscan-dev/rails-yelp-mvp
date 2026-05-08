# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [
  { name: "Sushi Place", address: "123 Tokyo St", phone_number: "123-456-7890", category: "japanese" },
  { name: "Pasta House", address: "456 Rome Ave", phone_number: "234-567-8901", category: "italian" },
  { name: "Dragon Express", address: "789 Beijing Rd", phone_number: "345-678-9012", category: "chinese" },
  { name: "Le Gourmet", address: "101 Paris Blvd", phone_number: "456-789-0123", category: "french" },
  { name: "Belgian Waffles", address: "202 Brussels Ln", phone_number: "567-890-1234", category: "belgian" }
]

restaurants.each do |attrs|
  Restaurant.create!(attrs)
end
