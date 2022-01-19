class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :price
  has_one :pizza
  has_one :restaurant
end


