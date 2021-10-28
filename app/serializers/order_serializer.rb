class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :order_total, :buy, :sell, :price, :user_id
  # belongs_to :user
  # has_many :stocks
end