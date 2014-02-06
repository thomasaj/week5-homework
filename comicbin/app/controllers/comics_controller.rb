class ComicsController < ApplicationController

	def index
		@comics = Comic.all
	end

	def show
		@comic = Comic.find(params[:comic_id])
		render "show"
	end

	def new
		render "new"
	end

	def new_commit
		c = Comic.new
		c.title = params[:title]
		c.description = params[:description]
		c.image = params[:image]
		c.save
		redirect_to "/comics/#{c.id}"
	end

	def kill
		Comic.find(params[:comic_id]).destroy
		redirect_to "/comics"
	end

end
