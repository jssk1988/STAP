class RenameSchoolArticlesTypeToArticleType < ActiveRecord::Migration
  def up
    rename_column :school_articles, :type, :article_type
  end

  def down
  end
end
