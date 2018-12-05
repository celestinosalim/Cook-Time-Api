class User < ApplicationRecord
    has_secure_password
    has_many :menus, class_name: "menu", foreign_key: "reference_id"
end
