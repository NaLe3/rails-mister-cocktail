require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(open(url).read)["drinks"]

Ingredient.destroy_all

# json = ActiveSupport::JSON.decode(open(url).read))

ingredients.each do |ingredient|
  puts ingredient
  Ingredient.create!(name: ingredient["strIngredient1"])
end

