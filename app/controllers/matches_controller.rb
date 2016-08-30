class MatchesController < ApplicationController

	http_basic_authenticate_with name: "michaeldada", password: "secret", except: [:index, :show]
	def index
		@matches = Match.all
	end
	def show
		@match = Match.find(params[:id])
	end
	def new 
		@match = Match.new
	end

	def edit
		@match = Match.find(params[:id])
	end

	def create
		@match = Match.new(match_params)

		if @match.save
			redirect_to matches_path
		else
			render 'new'
		end
	end

	def update
		@match = Match.find(params[:id])

		if @match.update(match_params)
			redirect_to matches_path
		else	
			render 'edit'
		end
	end

	def destroy
		@match = Match.find(params[:id])
		@match.destroy

		redirect_to matches_path
	end

	private
		def match_params
		params.require(:match).permit(:deck_name, :notes, :outcome, :user_class, :opp_class)
		end
	end
