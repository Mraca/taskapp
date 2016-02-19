class TasksController < ApplicationController
	def index
		@tasks_false = Task.where({done: false})
		@tasks_true = Task.where({done: true})
	end

	def new
		Task.create(:done => false, :name => params[:name], :date => Time.now)
		redirect_to tasks_url
	end
end
