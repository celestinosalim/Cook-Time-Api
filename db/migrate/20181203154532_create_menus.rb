class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :day
      t.string :image

      t.timestamps
    end
  end
end
