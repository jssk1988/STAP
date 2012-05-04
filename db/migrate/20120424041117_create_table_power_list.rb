class CreateTablePowerList < ActiveRecord::Migration
  def up
    create_table :power_list do |t|
      t.references :user
      t.references :sys_role
    end
  end

  def down
    drop_table :power_list
  end
end
