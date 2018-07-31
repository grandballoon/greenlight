class Trope < ApplicationRecord
  belongs_to :genre
  has_many :show_tropes
  has_many :shows, through: :show_tropes
  has_many :actors, through: :show
end
