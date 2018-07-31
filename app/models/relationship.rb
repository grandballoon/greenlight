class Relationship < ActiveRecord::Base
  belongs_to :influencer, class_name: "Show"
  belongs_to :influenced, class_name:"Show"
end
