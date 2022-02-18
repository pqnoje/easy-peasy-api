class CreateValuables < ActiveRecord::Migration[7.0]
  def change
    create_table :valuables do |t|
      t.string :title
      t.float :value
      t.string :description

      t.timestamps
    end
  end
end
