class AddGenreIdToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :genre_id, :integer
  end
end
