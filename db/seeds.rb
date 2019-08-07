Recipe.create({
    name: "Chocolate Chip Cookies"
})

Recipe.create({
    name: "Cinnamon Rolls"
})

Recipe.create({
    name: "Croissants"
})

Ingredient.create({
    name: "Flour",
    price: 1.99,
    weight: 16
})

Ingredient.create({
    name: "Eggs",
    price: 3.99,
    weight: 24
})

Ingredient.create({
    name: "Sugar",
    price: 1.75,
    weight: 24
})

Ingredient.create({
    name: "Butter",
    price: 2.99,
    weight: 16
})

Ingredient.create({
    name: "Chocolate Chips",
    price: 4.99,
    weight: 36
})

5.times do |index|
    RecipeIngredient.create({
        recipe_id: 1,
        ingredient_id: (index+1)
    }) 
end

4.times do |index|
    RecipeIngredient.create({
        recipe_id: 2,
        ingredient_id: (index+1)
    }) 
end

4.times do |index|
    RecipeIngredient.create({
        recipe_id: 3,
        ingredient_id: (index+1)
    }) 
end