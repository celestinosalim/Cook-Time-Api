class Menu < ApplicationRecord
    has_many :menu_dishes
    has_many :dishes, through: :menu_dishes
    accepts_nested_attributes_for :dishes

end
