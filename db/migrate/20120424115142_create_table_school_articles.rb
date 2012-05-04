class CreateTableSchoolArticles < ActiveRecord::Migration
  def up
    create_table :school_articles do |t|
      #发布人代号，也就是注册用户id
      t.references :user
      t.string :title
      #成果研究类型，0 理论研究， 1 应用研究， 2 软科学， 3 软件开发
      t.integer :type
      t.references :industry_dictionary
      #专利号
      t.string :patent_number
      #负责人 联系人
      t.string :principal
      #联系电话
      t.string :tel
      #成果摘要
      t.text :content
      #上传文件路径
      t.string :docs_url
      #浏览次数
      t.integer :scan_number
      t.timestamps
      t.integer :flag

    end
  end

  def down
    drop_table :school_articles
  end
end
