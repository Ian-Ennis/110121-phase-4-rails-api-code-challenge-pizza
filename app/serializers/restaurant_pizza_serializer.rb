class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :price, :pizza_id, :restaurant_id
  has_one :restaurant
  has_one :pizza
end


