class Producer < ApplicationRecord
  has_many :shows
  has_many :actors, through: :shows

end
