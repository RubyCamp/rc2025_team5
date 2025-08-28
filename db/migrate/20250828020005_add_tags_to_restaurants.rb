class AddTagsToRestaurants < ActiveRecord::Migration[8.0]
  def change
    add_column :restaurants, :tags, :string
    add_column :restaurants, :open, :time
    add_column :restaurants, :close, :time
  end
end
