class UsersController < ApplicationController

	def index
		@users = User.all
		render(:index)
	end

	def show
		@users = User.find_by_id(params[:id])
		render(:show)
	end

	def new
		render(:new)
	end

	def create
		@users = User.create(user_params)
		#the problem is there is an error message
		#when the user leaves a required field blank

		if @users.valid?
			redirect_to "/users/#{@users.id}"
		else
			#handle error
			render(:new)
			# error message?
		end
	end

	def edit
		@users = User.find_by_id(params[:id])
		render(:edit)
	end

	def update
		@users = User.find_by_id(params[:id])
		@update = @users.update(user_params)

		if @update
			redirect_to "/users/#{@users.id}"
		else
			#handle error
			render(:edit)
			# error message?
		end
	end

	def destroy
		@users = User.find_by_id(params[:id])
		@users.destroy
		redirect_to("/users")
	end

	def user_params
		if params[:password].empty?
		return {first_name: params[:first_name], last_name: params[:last_name], dob: params[:dob], sex: params[:sex], email: params[:email], facebook_link: params[:facebook_link]}
		else return {first_name: params[:first_name], last_name: params[:last_name], dob: params[:dob], sex: params[:sex], email: params[:email], facebook_link: params[:facebook_link], password: params[:password]}

		end

	end

end