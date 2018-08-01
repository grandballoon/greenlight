class Producer < ApplicationRecord
  has_secure_password
  has_many :shows
  has_many :actors, through: :shows

end
