class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :ingredients
  has_one :pizza
  has_one :restaurant
end


