class Character < ApplicationRecord
  belongs_to :actor
  belongs_to :show
  has_many :character_episodes
  has_many :episodes, through: :character_episodes
  has_one :love_interest, class_name: "Character"
end
