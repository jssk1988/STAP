class SchoolArticlesAuthorsList < ActiveRecord::Base
  belongs_to :school_article
  belongs_to :author

end# == Schema Information
#
# Table name: school_articles_authors_lists
#
#  id                :integer(4)      not null, primary key
#  school_article_id :integer(4)
#  author_id         :integer(4)
#

