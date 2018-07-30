class Show < ApplicationRecord
  belongs_to :producer
  has_many :episodes
  has_many :characters, through: :episodes
  has_many :actors, through: :characters
  has_many :influences, class_name: "Show"
end
