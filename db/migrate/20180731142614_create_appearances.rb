class CreateAppearances < ActiveRecord::Migration[5.2]
  def change
    create_table :appearances do |t|
      t.integer :show_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
