class Show < ApplicationRecord
  belongs_to :producer
  has_many :appearances
  has_many :actors, through: :appearances
  belongs_to :genre
  has_many :show_tropes
  has_many :tropes, through: :show_tropes

  has_many :influencing_relationships, class_name: "Relationship", foreign_key: "influencer_id"
  has_many :influenced_relationships, class_name: "Relationship", foreign_key: "influenced_id"
  has_many :influences, through: :influenced_relationships, source: :influencer
  has_many :influenced, through: :influencing_relationships, source: :influenced

end
