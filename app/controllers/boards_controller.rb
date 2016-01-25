class BoardsController < ApplicationController

	def index
		@boards = Board.all
	end

	def destroy
		Board.find(params[:id]).destroy
		redirect_to boards_url
	end

	def create
		@board = Board.new(params[:name => 'Dupa'])
		if @board.save
			redirect_to boards_path
		end
	end

	def new
		redirect_to boards_path
	end
end
