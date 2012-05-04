class AddFlagToUsers < ActiveRecord::Migration
  def change
	add_column :users, :flag, :integer
  end
end
