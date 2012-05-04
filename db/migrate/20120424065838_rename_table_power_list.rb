class RenameTablePowerList < ActiveRecord::Migration
  def up
    rename_table :power_list, :power_lists
  end

  def down
  end
end
