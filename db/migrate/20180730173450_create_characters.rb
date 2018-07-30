class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :archetype
      t.string :catchphrase
      t.integer :actor_id
      t.integer :show_id

      t.timestamps
    end
  end
end
