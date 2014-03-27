class SessionsController < ApplicationController

	def new 
		@title = "Sign in"
	end

	def create
		@title = "Sign in"
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			flash.now[:danger] = "Invalid email/password combination"
			render 'new'
		end
	end

	def destroy
	end

end