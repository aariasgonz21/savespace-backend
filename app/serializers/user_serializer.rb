class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :first_name, :reviews
  # has_many :reviews
end
