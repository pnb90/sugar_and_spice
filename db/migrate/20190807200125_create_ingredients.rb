class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :price
      t.integer :recipe_id
      t.integer :weight

      t.timestamps
    end
  end
end
