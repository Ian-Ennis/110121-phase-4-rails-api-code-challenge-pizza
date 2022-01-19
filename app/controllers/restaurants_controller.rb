class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        render json: Restaurant.all, status: :ok
    end

    def show 
        render json: find_restaurant, status: :ok, serializer: ShowRestaurantPizzaSerializer
    end

    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        head :no_content
    end

    private 

    def find_restaurant
        Restaurant.find(params[:id])
    end

    def record_not_found
        render json: {"error": "Restaurant not found"}, status: :not_found
    end


end
