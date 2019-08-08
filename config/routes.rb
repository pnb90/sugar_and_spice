Rails.application.routes.draw do
  namespace :api do
    resources :recipes, :ingredients, :recipe_ingredients
  end
end
