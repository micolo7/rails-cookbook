# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data to avoid duplicates
Recipe.destroy_all

# Create recipes
Recipe.create!(
  [
    {
      name: "Spaghetti Carbonara",
      description: "A true Italian Carbonara recipe, ready in about 30 minutes. No cream, just eggs, cheese, and pancetta.",
      image_url: "https://example.com/spaghetti_carbonara.jpg",
      rating: 8.5
    },
    {
      name: "Chicken Tikka Masala",
      description: "A rich and creamy curry dish with tender chunks of grilled chicken and a flavorful tomato-based sauce.",
      image_url: "https://example.com/chicken_tikka_masala.jpg",
      rating: 9.0
    },
    {
      name: "Caesar Salad",
      description: "A classic salad with romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      image_url: "https://example.com/caesar_salad.jpg",
      rating: 7.5
    },
    {
      name: "Chocolate Lava Cake",
      description: "A decadent dessert with a gooey chocolate center, served warm with vanilla ice cream.",
      image_url: "https://example.com/chocolate_lava_cake.jpg",
      rating: 9.5
    }
  ]
)

puts "Seeding complete! Created #{Recipe.count} recipes."
