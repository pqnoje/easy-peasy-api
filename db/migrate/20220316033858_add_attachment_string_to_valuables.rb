class AddAttachmentStringToValuables < ActiveRecord::Migration[7.0]
  def change
    add_column :valuables, :attachment, :string
  end
end
