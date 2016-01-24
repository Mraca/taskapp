class BoardsController < ApplicationController

def index
	@boards = Board.find(1)
end

end
