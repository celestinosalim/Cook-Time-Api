class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :role, :avatar, :created_at, :updated_at, :last_login
end
