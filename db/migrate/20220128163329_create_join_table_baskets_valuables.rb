class CreateJoinTableBasketsValuables < ActiveRecord::Migration[7.0]
  def change
    create_join_table :baskets, :valuables do |t|
      t.index [:basket_id, :valuable_id]
      # t.index [:valuable_id, :basket_id]
    end
  end
end
