class RenameTableSchoolArticlesAuthorsToSchoolArticlesAuthorsLists < ActiveRecord::Migration
  def up
    rename_table :school_articles_authors, :school_articles_authors_lists
  end

  def down
  end
end
