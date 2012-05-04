class CreateTableSysRoles < ActiveRecord::Migration
  def change
    create_table :sys_roles do |t|
      t.string :role_name
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
