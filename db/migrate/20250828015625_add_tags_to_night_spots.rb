class AddTagsToNightSpots < ActiveRecord::Migration[8.0]
  def change
    add_column :night_spots, :tags, :string
    add_column :night_spots, :open, :time
    add_column :night_spots, :close, :time
  end
end
