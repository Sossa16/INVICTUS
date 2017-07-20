class Team < ApplicationRecord
  	validates :team_name, presence: true, length: { minimum: 5 }
	validates :description, presence: true
end
