require 'jwt'

class AuthenticationController < ApplicationController
	def authenticate_jwt_token
		token = params[:token]
		# Set password to nil and validation to false otherwise this won't work
		decoded_token = JWT.decode token, nil, false
puts decoded_token
		return decoded_token
	end
end
