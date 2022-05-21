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
		unless user.buyer.basket.nil? 
			user.buyer.build_basket = Basket.create
		end

		params[:valuables].each do |valuable|
			valuable = Valuable.find valuable[:id]
			user.buyer.basket.valuables.push valuable
		end
		user.save
		render json: user.buyer.basket.valuables
	end

	def create
		valuable = Valuable.new
		valuable.images = params[:file]
		valuable.title = params[:title]
		valuable.description = params[:description]
		valuable.value = params[:value]
		valuable.save
		render json: valuable
	end

end
