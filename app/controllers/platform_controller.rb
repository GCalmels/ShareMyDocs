class PlatformController < ApplicationController
	before_filter :authenticate_user!

	def home
	end

	def stats
	end
end
