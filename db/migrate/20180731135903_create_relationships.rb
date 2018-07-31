class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :influencer_id
      t.integer :influenced_id
    end
  end
end
