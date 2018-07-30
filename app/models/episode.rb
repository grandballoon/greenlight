class Episode < ApplicationRecord
  belongs_to :show
  has_many :character_episodes
  has_many :characters, through: :character_episodes
  has_many :actors, through: :characters
  belongs_to :producer 
end
