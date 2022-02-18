class AddColumnInSessionToUsersTable < ActiveRecord::Migration[7.0]
  def change
	add_column :users, :in_session, :boolean
	change_column_default :users, :in_session, false
  end
end
