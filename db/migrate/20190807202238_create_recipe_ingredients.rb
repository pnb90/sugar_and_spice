class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.decimal :price, precision: 8, scale: 2
      t.decimal :weight, precision: 8, scale: 2
      t.timestamps
    end
  end
end
