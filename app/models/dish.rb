class Dish < ApplicationRecord
    has_many :menu_dishes
    has_many :menus, through: :menu_dishes
    has_many :ingredient_dishes
    has_many :ingredients, through: :ingredient_dishes
end
