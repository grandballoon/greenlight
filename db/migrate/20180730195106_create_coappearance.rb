class CreateCoappearance < ActiveRecord::Migration[5.2]
  def change
    create_table :coappearances do |t|
      t.integer :star_id
      t.integer :costar_id
    end
  end
end
