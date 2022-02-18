class LogoutController < ApplicationController
	def terminate_session
		user = User.find_by(:token => params[:token])
		user.in_session = false
		user.token = nil
		user.save
	end
end
