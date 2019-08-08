json.id recipe.id
json.name recipe.name 

json.ingredients do
    json.array! recipe.ingredients, partial: 'api/ingredients/ingredient', as: :ingredient 
  end