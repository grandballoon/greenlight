class AddPasswordDigestToProducers < ActiveRecord::Migration[5.2]
  def change
    add_column :producers, :password_digest, :string
  end
end
