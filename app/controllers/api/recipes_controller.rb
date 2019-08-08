class Api::RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        render 'index.json.jbuilder'
    end

    def create
        @recipe = Recipe.new(
            name: params[:name]
        )

        if @recipe.save 
            render 'show.json.jbuilder'
        else
            render json: {errors: @recipe.errors.full_messages}, status: :unprocessable_entity

        end
    end

    def show
        @recipe = Recipe.find(params[:id])
        render 'show.json.jbuilder'
    end

    def update
        @recipe = Recipe.find(params[:id])

        @recipe.name =  params[:name] || @recipe.name
        
        if @recipe.save
          render 'show.json.jbuilder'
        else
          render json: {errors: @recipe.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
        render json: {message: "Successfully removed recipe."}
    end
end
