class BasketController < ApplicationController
	def save_basket
		user = User.find_by token: request.headers["token"]
		valuables = []
		unless user.buyer.basket.eql? nil
			basket = Basket.new
			params[:valuables].each do |valuable|
				valuables.push Valuable.find valuable[:id]
			end
			basket.valuables = valuables
			basket.save
		end
		user.buyer.basket.valuables = valuables
		user.save
		
		render json: user.buyer.basket
	end
end
