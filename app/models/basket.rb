class Basket < ApplicationRecord
  has_and_belongs_to_many :valuables
  belongs_to :buyer
end
