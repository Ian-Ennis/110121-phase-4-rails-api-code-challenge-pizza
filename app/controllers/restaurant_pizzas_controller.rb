class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_record

    def create 
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza, status: :created
        return restaurant_pizza
    end

    private

    def restaurant_pizza_params
        params.permit(:id, :name, :ingredients, :price, :pizza_id, :restaurant_id)
    end

    def render_invalid_record(exception)
        render json: { errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end



