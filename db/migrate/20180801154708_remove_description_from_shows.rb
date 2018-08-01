class RemoveDescriptionFromShows < ActiveRecord::Migration[5.2]
  def change
    remove_column :shows, :description, :string
  end
end
