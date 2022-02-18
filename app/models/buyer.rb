class Buyer < ApplicationRecord
	has_one :basket
	has_one :user
end
