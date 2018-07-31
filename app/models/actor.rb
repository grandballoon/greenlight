class Actor < ApplicationRecord
  has_many :appearances
  has_many :shows, through: :appearances
  has_many :producers, through: :shows
  


  def costars
    costars = []
    self.shows.each do |show|
      show.actors.each do |actor|
        if actor != self
          costars << actor
        end
      end
    end
    costars
  end


  # has_many :starring_appearances, class_name: "Coappearance", foreign_key: "star_id"
  # has_many :costarring_appearances, class_name: "Coappearance", foreign_key: "costar_id"
  # has_many :costars, through: :starring_appearances, source: :costar
end
