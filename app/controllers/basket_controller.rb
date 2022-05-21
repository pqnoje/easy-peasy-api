class BasketController < ApplicationController
	def save_basket
		user = User.last
		puts params
		if user.buyer.basket.nil? 
			user.buyer.build_basket
		end
        valuables = params[:valuables]
		valuables.each do |valuable|
            valuable_id = valuable[:id]
			valuable = Valuable.find valuable_id
			user.buyer.basket.valuables.push valuable
		end
		user.save
		render json: user.buyer.basket.valuables
	end
end
