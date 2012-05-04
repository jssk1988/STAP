class CreateTableCompanyArticles < ActiveRecord::Migration
  def up
    create_table :company_articles do |t|
      #发布人代号，也就是注册用户id
      t.references :user
      t.references :industry_dictionary
      t.string :title
      #投资额
      t.decimal :money
      #负责人 联系人
      t.string :principal
      #联系电话
      t.string :tel
      #需求摘要
      t.text :content
      # 0技术引进 1合作开发 2委托开发 3面议
      t.string :cooperation_type
      #上传文件路径
      t.string :docs_url
      #浏览次数
      t.integer :scan_number
      t.timestamps
      t.integer :flag
    end
  end

  def down
    drop_table :company_articles
  end
end
