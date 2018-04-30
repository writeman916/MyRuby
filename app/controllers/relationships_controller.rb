class RelationshipsController < ApplicationController

	before_action :logged_in_user

	def create
		user = User.find(params[:followed_id])
		current_user.follow(user)
<<<<<<< HEAD
		redirect_to user
=======
		respond_to do |format|
			format.html { redirect_to @user }
			format.js
		end
>>>>>>> 04333373e84046df3c81b8c0c6af9e7534cf292d
	end

	def destroy
		user = Relationship.find(params[:id]).followed
		current_user.unfollow(user)
<<<<<<< HEAD
		redirect_to user
=======
		respond_to do |format|
			format.html { redirect_to @user }
			format.js
		end
>>>>>>> 04333373e84046df3c81b8c0c6af9e7534cf292d
	end


	def logged_in_user
		unless logged_in?
			store_location
			flash[:danger] = "Please log in."
			redirect_to login_url
		end
	end
end
