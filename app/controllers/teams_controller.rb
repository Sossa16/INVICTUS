class TeamsController < ApplicationController
	
	#GET /teams
	def index
		@team = Team.all
	end

	#GET /teams/id
	def show
		@team = Team.find(params[:id])
	end#GET
	
	def new
		@team = Team.new
	end

	#GET /teams/id/edit
	def edit
		@team = Team.find(params[:id])
	end


	#POST
	def create
		@team = Team.new(team_params)
		if @team.save
			redirect_to :action => :show, :id => @team.id
		else
			render 'new'
		end		
	end

	#PACHT team/:id
	def update
		@team = Team.find(params[:id])

		if @team.update(team_params)
			redirect_to @team
		else
			render 'edit'
		end
	end

	def destroy
		@team = Team.find(params[:id])
		@team.destroy
		redirect_to teams_path
	end		

	

	def home
	end

	

	private
		def team_params
			params.require(:team).permit(:team_name,:description,:cover)
		end	


end
