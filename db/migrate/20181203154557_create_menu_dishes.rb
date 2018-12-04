class CreateMenuDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_dishes do |t|
      t.belongs_to :menu, foreign_key: true
      t.belongs_to :dish, foreign_key: true

      t.timestamps
    end
  end
end
