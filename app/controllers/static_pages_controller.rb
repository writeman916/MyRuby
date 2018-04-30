class StaticPagesController < ApplicationController
	def home
		if logged_in?
			@micropost = current_user.microposts.build
			@feed_items = current_user.feed.paginate page: params[:page]
		end
<<<<<<< HEAD
		@lessons = Lesson.all
=======
>>>>>>> 04333373e84046df3c81b8c0c6af9e7534cf292d
	end
	def help
	end
	def about
	end
	def contact
	end
end