class SongsController < ApplicationController
	def index
		@artists = Artist.find_by_id(params[:artist_id])
		@songs = Song.where(artist_id: params[:artist_id])
		render(:index)
	end

	def show
		@artists = Artist.find_by_id(params[:artist_id])
		@songs = Song.find_by_id(params[:id])
		render(:show)
	end

	def all_songs
		@songs = Song.all
		@artists = Artist.all
		render(:all_songs)
	end

	def new
		@songs = Song.find_by_id(params[:artist_id])
		render(:new)
	end

	def create
		@songs = Song.create({title: params[:title], year: params[:year], artist_id: params[:artist_id]})
		redirect_to("/artists/#{@songs.artist_id}/songs")
	end

	def edit
		@songs = Song.find_by_id(params[:id])
		render(:edit)
	end

	def update
		@songs = Song.find_by_id(params[:id])
		@songs.update({title: params[:title], year: params[:year], artist_id: params[:artist_id]})
		redirect_to("/artists/#{@songs.artist_id}/songs")
	end

	def destroy
		@songs = Song.find_by_id(params[:id])
		@songs.destroy
		redirect_to("/artists/#{@songs.artist_id}/songs")
	end

end