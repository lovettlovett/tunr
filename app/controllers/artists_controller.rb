class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
		render(:index)
	end

	def show
		@artists = Artist.find_by_id(params[:id])
		render(:show)
	end

	def new
		render(:new)
	end

	def create
		@artists = Artist.create({name: params[:name], genre: params[:genre], photo_url: params[:photo_url]})
		redirect_to("/artists")
	end

	def edit
		@artists = Artist.find_by_id(params[:id])
	end

	def update
		@artists = Artist.find_by_id(params[:id])
		@artists.update({name: params[:name], genre: params[:genre], photo_url: params[:photo_url]})
		redirect_to("/artists/#{@artists.id}")
	end

	def destroy
		@artists = Artist.find_by_id(params[:id])
		@artists.destroy
		redirect_to("/artists")
	end

end