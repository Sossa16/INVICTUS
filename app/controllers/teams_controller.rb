class TeamsController < ApplicationController
	
	#GET /teams
	def index
		@team = Team.all
	end

	#GET /teams/id
	def show
		@team = Team.find(params[:id])
	end

	#POST
	def create
		@team = Team.new(team_params)
		@team.save
		redirect_to :action => :show, :id => @post.id
	end

	#GET
	def new
		@team = Team.new
	end

	

	private
		def team_params
			params.require(:team).permit(:team_name, :description)
		end	


end
