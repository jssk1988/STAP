class CreateTableUsersSysRoles < ActiveRecord::Migration
  def up
    create_table :users_sys_roles do |t|
      t.references :user
      t.references :sys_role
    end
    add_index :users_sys_roles, :user_id
  end

  def down
  end
end
