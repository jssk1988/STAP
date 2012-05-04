class CreateTableAuthors < ActiveRecord::Migration
  def up
    create_table :authors do |t|
      t.references :user
      #作者真实姓名
      t.string :real_name
      #作者身份证号码
      t.string :id_card
    end
  end

  def down
    drop_table :authors
  end
end
