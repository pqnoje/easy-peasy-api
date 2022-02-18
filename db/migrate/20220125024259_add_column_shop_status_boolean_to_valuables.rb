class AddColumnShopStatusBooleanToValuables < ActiveRecord::Migration[7.0]
  def change
	add_column :valuables, :shop_status, :boolean
  end
end
