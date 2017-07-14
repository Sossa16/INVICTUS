class TeamsController < ApplicationController
	def new
	end

	def create
		@team = Team.new(team_params)
		@team.save
		redirect_to :action => :show, :id => @team.id
	end

	def show
		@team = Team.find(params[:id])
	end

	private
		def team_params
			params.require(:team).permit(:team_name, :description)
		end	


end
