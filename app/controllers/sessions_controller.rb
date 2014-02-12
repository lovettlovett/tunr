class SessionsController < ApplicationController
	def new
		render(:new)
	end

	def create
		#authenticate: check whether this info matches what's in the database
		#if so, go to the user page
		#if not...self destruct

		#find if any user has that email
		user = User.find_by(email: params[:email])

		#if that user exists and it has a password that was sent
		if user.password == params[:password]

			#save teh user_id in the session hash
			session[:user_id] = user.id

			#redirect the user to the homepage
			redirect_to(user_path(user))
		end
	end

	def delete
		session[:user_id] = nil
		redirect_to root_path
	end

end