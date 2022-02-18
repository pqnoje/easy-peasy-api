class RemoveValuableIdAndBuyerIdColumnsFromBaskets < ActiveRecord::Migration[7.0]
  def change
	remove_column(:baskets, :valuable_id)
  end
end
