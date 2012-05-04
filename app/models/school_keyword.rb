class SchoolKeyword < ActiveRecord::Base
  belongs_to :school_article
end
# == Schema Information
#
# Table name: school_keywords
#
#  id                :integer(4)      not null, primary key
#  name              :string(255)
#  school_article_id :integer(4)
#  type              :boolean(1)
#

