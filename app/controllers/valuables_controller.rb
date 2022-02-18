class ValuablesController < ApplicationController
    def index
        valuables = Valuable.all
        render json: valuables
    end

	def verify_disponibility
		valuable = Valuable.find(params[:id])
		valuable_current_status = valuable.shop_status
		if valuable.shop_status.eql? false
			valuable.shop_status = true
			valuable.save
		end
		render json: valuable_current_status
	end

	def save_basket
		user = User.last
		user.buyer.basket = Basket.new
		params[:valuables].each do |valuable|
			user.buyer.basket.valuables.push Valuable.find valuable[:id]
		end
puts "!!!!!!!!!!"
user.buyer.basket.valuables.each do |v|
	puts v.title
end
		user.buyer.basket.save
		user.buyer.save
		user.save
user.buyer.basket.save
		render json: user
	end
end
