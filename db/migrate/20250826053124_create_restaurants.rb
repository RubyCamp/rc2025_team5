class CreateRestaurants < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.decimal :geo_lat
      t.decimal :geo_lng
      t.text :description
      t.timestamps
    end
  end
end
