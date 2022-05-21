require 'jwt'

class LoginController < ApplicationController
	def authenticate_user
		user = User.find_by(:username => params[:username], :password => params[:password])

		#begin
		#  decoded_token = JWT.decode token, hmac_secret, true, { algorithm: 'HS256' }
		#rescue JWT::ExpiredSignature
		#  # Handle expired token, e.g. logout user or deny access
		#end

		token = ''
		unless user.nil?
			hmac_secret = 'my$ecretK3y'
			exp_payload = { data: ...user, exp: Time.now.to_i + 4 * 3600 }
			token = JWT.encode exp_payload, hmac_secret, 'HS256'
			self.save_user_session(user, token)
		end
		json_web_token = {'token' => token } 
		render json: json_web_token
	end

	def save_user_session(user, token)
		user.in_session = false
		user.token = token
		user.save
	end
end
