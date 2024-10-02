# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Bookmark.destroy_all
Recipe.destroy_all

Recipe.create(name: "Spaghetti Carbonara", description: "A creamy and savory pasta dish made with spaghetti, eggs, bacon, pecorino Romano cheese, and black pepper.", image_url: "", rating: 6.9)
Recipe.create(name: "Pizza Margherita", description: " A classic Italian pizza with a thin crust, tomato sauce, mozzarella cheese, fresh basil, and olive oil...", image_url: "", rating: 6.9)
Recipe.create(name: "Lasagna", description: "A layered pasta dish made with sheets of lasagna noodles, meat sauce (often made with ground beef or pork), ricotta cheese, and Parmesan cheese....", image_url: "", rating: 6.9)
Recipe.create(name: "Spinach and Ricotta Cannelloni", description: "classic Italian dish made with large tubes of pasta filled with a creamy mixture of spinach, ricotta cheese, eggs, and spices.....", image_url: "", rating: 6.9)

categories = ["Pasta", "Seafood", "Dessert", "Chicken"]

categories = each do |category|
  url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
  meals_serialised = URI.parse(url).read
  meals = JSON.parse(meals_serialized)

  meals["meals"].each do |meal|
  p meals["idMeal"]
  end
end

url = "https://www.themealdb.com/api/json/v1/v/lookup.php?i=52772"
meal_serialised = URI.parse(url).read
  meal = JSON.parse(meal_serialized)

  p meal["meals"][0]["strMeal"]
  p meal["meals"][0]["strInstuctions"]
  p meal["meals"][0]["strMealThumb"]
