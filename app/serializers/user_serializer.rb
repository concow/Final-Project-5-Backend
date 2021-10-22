class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :user_balance
  # has_many :stocks
  # has_many :orders
end