class CreateShowTropes < ActiveRecord::Migration[5.2]
  def change
    create_table :show_tropes do |t|
      t.integer :show_id
      t.integer :trope_id
    end
  end
end
