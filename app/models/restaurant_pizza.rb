class RestaurantPizza < ApplicationRecord
    belongs_to :pizza 
    belongs_to :restaurant

    validates :price, :inclusion => 1..30
end
