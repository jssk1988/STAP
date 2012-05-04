class CreateTableSchoolArticlesAuthors < ActiveRecord::Migration
  def up
    create_table :school_articles_authors do |t|
      t.references :school_articles
      t.references :author
    end
  end

  def down
    drop_table :school_articles_authors
  end
end
