class CreateTableAwards < ActiveRecord::Migration
  def up
    create_table :awards do |t|
      t.references :school_articles
      #获奖的名字
      t.string :name
      #获奖项目名称
      t.string :project_name
      #获奖归属单位
      t.string :department
      #获奖的类型 0国家级 1省部级 2厅局级 3校级 4其他
      t.integer :type
      #获奖等级 0 特等奖 1一等奖 2二等奖 3三等奖 4其他
      t.integer :degree
      #获奖时间
      t.date :award_time
      #获奖完成人
      t.string :who_finished
    end
  end

  def down
    drop_table :awards
  end
end
