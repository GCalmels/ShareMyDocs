class UsersController < ApplicationController
	before_filter :authenticate_user!

	def show		
	end

	def my_docs
		@documents = Document.where(user: current_user)
	end
end
