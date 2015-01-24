class AdministrationController < ApplicationController
	before_action :authenticate_user!
	before_action :user_is_admin

	private

	def user_is_admin
		if current_user.admin?
			true
		else
			raise "You don't have the rights to perform this action!"
		end
	rescue
		redirect_to root_url
	end
end
