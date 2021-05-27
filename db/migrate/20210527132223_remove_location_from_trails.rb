class RemoveLocationFromTrails < ActiveRecord::Migration[6.1]
  def change
    remove_column :trails, :location, :string
  end
end
