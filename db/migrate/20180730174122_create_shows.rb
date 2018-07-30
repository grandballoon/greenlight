class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :description
      t.string :producer_id

      t.timestamps
    end
  end
end
