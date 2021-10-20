class StockSerializer < ActiveModel::Serializer
  attributes :id, :company, :symbol, :price
  belongs_to :user
end