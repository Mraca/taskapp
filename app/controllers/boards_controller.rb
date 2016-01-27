class BoardsController < ApplicationController

	def index
		@boards = Board.all
	end

	def destroy
		Board.find(params[:id]).destroy
		redirect_to boards_url
	end

	def new
	  @board = Board.new(:name => "dupa")
	  @board.save
	  redirect_to boards_url
	end
	

end
