class Api::IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
        render 'index.json.jbuilder'
    end

    def create
        @ingredient = Ingredient.new(
            name: params[:name],
            price: params[:price],
            weight: params[:weight]
        )

        if @ingredient.save 
            render 'show.json.jbuilder'
        else
            render json: {errors: @ingredient.errors.full_messages}, status: :unprocessable_entity

        end
    end

    def show
        @ingredient = Ingredient.find(params[:id])
        render 'show.json.jbuilder'
    end

    def update
        @ingredient = Ingredient.find(params[:id])

        @ingredient.name =  params[:name] || @ingredient.name
        @ingredient.price = params[:price] || @ingredient.price
        @ingredient.weight = params[:weight] || @ingredient.weight
        
        if @ingredient.save
          render 'show.json.jbuilder'
        else
          render json: {errors: @ingredient.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        ingredient = Ingredient.find(params[:id])
        ingredient.destroy
        render json: {message: "Successfully removed ingredient."}
    end
end
