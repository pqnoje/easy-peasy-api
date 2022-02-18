class SignupController < ApplicationController
	def new
		user = User.new
		render json: user
	end

	def create
		buyer = Buyer.new
		buyer.name = params[:buyer][:name]
		
		user = User.new
		user.username = params[:buyer][:username]
		user.password = params[:buyer][:password]

		user.buyer = buyer
		user.save
		render json: user
	end

	def update
		user = User.find(params[:id])
		user.update(params[:buyer])
		render json: user
	end

	def delete
		user = User.find(params[:id])
		user.remove
		render json: user
	end
end
