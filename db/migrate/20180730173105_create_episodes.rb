class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.integer :season
      t.string :title
      t.integer :show_id
      t.integer :producer_id

      t.timestamps
    end
  end
end
