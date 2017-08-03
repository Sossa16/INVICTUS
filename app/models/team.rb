class Team < ApplicationRecord
  	validates :team_name, presence: true, length: { minimum: 5 }
	validates :description, presence: true

	has_attached_file :cover, style: { medium: "800x720", thumb: "300x300"}
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
