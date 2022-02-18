class CreateBuyers < ActiveRecord::Migration[7.0]
  def change
	drop_table :buyers
    create_table :buyers do |t|
      t.string :name

      t.timestamps
    end
  end
end
