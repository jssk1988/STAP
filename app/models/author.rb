class Author < ActiveRecord::Base
  has_many :school_articles, :through => :SchoolArticlesAuthorsLists

end# == Schema Information
#
# Table name: authors
#
#  id        :integer(4)      not null, primary key
#  user_id   :integer(4)
#  real_name :string(255)
#  id_card   :string(255)
#

