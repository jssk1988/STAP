class CreateTableSchoolKeywords < ActiveRecord::Migration
  def up
    create_table :school_keywords do |t|
      #关键字
      t.string :name
      t.references :school_articles
      #0用户输入 1系统分析出来
      t.boolean :type
    end
  end

  def down
    drop_table :school_keywords
  end
end
