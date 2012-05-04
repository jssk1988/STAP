class CreateTableCompanyKeywords < ActiveRecord::Migration
  def up
    create_table :company_keywords do |t|
      #关键字
      t.string :name
      t.references :company_article
      #0用户输入 1系统分析出来
      t.boolean :type
    end
  end

  def down
    drop_table :company_keywords
  end
end
