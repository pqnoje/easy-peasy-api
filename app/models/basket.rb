class Basket < ApplicationRecord
  has_many :valuables
  belongs_to :buyer
end
