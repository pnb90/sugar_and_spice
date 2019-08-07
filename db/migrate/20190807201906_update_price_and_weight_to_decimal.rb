class UpdatePriceAndWeightToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :price, :decimal, precision: 8, scale: 2
    change_column :ingredients, :weight, :decimal, precision: 8, scale: 2
    remove_column :ingredients, :recipe_id, :integer
  end
end
