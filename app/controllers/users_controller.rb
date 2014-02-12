class UsersController < ApplicationController

	def index
		@users = User.all
		render(:index)
	end

	def show
		@user = User.find_by_id(params[:id])
		render(:show)
	end

	def new
		#@user = User.new
		render(:new)
	end

	def create
		@user = User.create(user_params)
		#the problem is there is an error message
		#when the user leaves a required field blank

		if @user
			redirect_to "/users/#{@user.id}"
		else
			#handle error
			render(:new)
			# error message?
		end
	end

	def edit
		@user = User.find_by_id(params[:id])
		render(:edit)
	end

	def update
		@user = User.find_by_id(params[:id])
		@update = @user.update(user_params)

		if @update
			redirect_to "/users/#{@user.id}"
		else
			#handle error
			render(:edit)
			# error message?
		end
	end

	def destroy
		@user = User.find_by_id(params[:id])
		@user.destroy
		redirect_to("/users")
	end

	def user_params
		#If you used a form_for
		#params.require(:user).permit(:email, :first_name, :last_name, :dob, :gender, :facebook_link)
		if params[:password].empty?
		return {first_name: params[:first_name], last_name: params[:last_name], dob: params[:dob], sex: params[:sex], email: params[:email], facebook_link: params[:facebook_link]}
		else 
			return {first_name: params[:first_name], last_name: params[:last_name], dob: params[:dob], sex: params[:sex], email: params[:email], facebook_link: params[:facebook_link], password: params[:password]}
		end

	end

end