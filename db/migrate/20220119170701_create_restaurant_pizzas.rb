class CreateRestaurantPizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :price
      t.references :pizza
      t.references :restaurant

      t.timestamps
    end
  end
end
