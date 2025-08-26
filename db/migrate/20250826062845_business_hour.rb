class BusinessHour < ActiveRecord::Migration[8.0]
  def change
    add_column :onsens, :open, :time
    add_column :onsens, :close, :time
  end
end
