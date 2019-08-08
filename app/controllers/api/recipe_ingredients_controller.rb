class Api::RecipeIngredientsController < ApplicationController
    def index
        @recipe_ingredients = RecipeIngredient.all
        render 'index.json.jbuilder'
    end

    def create
        @recipe_ingredient = RecipeIngredient.new(
            recipe_id: params[:recipe_id],
            ingredient_id: params[:ingredient_id],
            price: params[:price],
            weight: params[:weight]
        )

        if @recipe_ingredient.save 
            render 'show.json.jbuilder'
        else
            render json: {errors: @recipe_ingredient.errors.full_messages}, status: :unprocessable_entity

        end
    end

    def show
        @recipe_ingredient = RecipeIngredient.find(params[:id])
        render 'show.json.jbuilder'
    end

    def update
        @recipe_ingredient = RecipeIngredient.find(params[:id])

        @recipe_ingredient.recipe_id =  params[:recipe_id] || @recipe_ingredient.recipe_id
        @recipe_ingredient.ingredient_id =  params[:ingredient_id] || @recipe_ingredient.ingredient_id
        @recipe_ingredient.price = params[:price] || @recipe_ingredient.price
        @recipe_ingredient.weight = params[:weight] || @recipe_ingredient.weight
        
        if @recipe_ingredient.save
          render 'show.json.jbuilder'
        else
          render json: {errors: @recipe_ingredient.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        recipe_ingredient = RecipeIngredient.find(params[:id])
        recipe_ingredient.destroy
        render json: {message: "Successfully removed recipe ingredient."}
    end
end
