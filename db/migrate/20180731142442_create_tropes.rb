class CreateTropes < ActiveRecord::Migration[5.2]
  def change
    create_table :tropes do |t|
      t.string :name
      t.string :description
      t.integer :genre_id

      t.timestamps
    end
  end
end
