class ChangeColumnDefaultValueToFalseValuablesShopStatus < ActiveRecord::Migration[7.0]
  def change
	change_column_default :valuables, :shop_status, false
  end
end
