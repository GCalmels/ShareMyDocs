class AuthenticationController < ApplicationController
	before_filter :authenticate_user!
	
  def login
  end
end
