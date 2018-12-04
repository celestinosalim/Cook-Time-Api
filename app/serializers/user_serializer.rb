class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :password_confirmation, :admin
end
