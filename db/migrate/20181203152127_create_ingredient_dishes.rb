class CreateIngredientDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_dishes do |t|
      t.belongs_to :ingredient, foreign_key: true
      t.belongs_to :dish, foreign_key: true

      t.timestamps
    end
  end
end
