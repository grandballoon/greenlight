class AddDescriptionToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :description, :string
  end
end
