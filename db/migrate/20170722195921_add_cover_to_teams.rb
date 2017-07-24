class AddCoverToTeams < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :teams, :cover
  end
end
