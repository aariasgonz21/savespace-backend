class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :first_name
end
