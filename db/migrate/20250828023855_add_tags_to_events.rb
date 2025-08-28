class AddTagsToEvents < ActiveRecord::Migration[8.0]
  def change
    add_column :events, :tags, :string
    add_column :events, :open, :time
    add_column :events, :close, :time
  end
end
