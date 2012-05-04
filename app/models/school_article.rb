class SchoolArticle < ActiveRecord::Base
  belongs_to :user
  has_many :school_keywords
  has_many :awards
  has_many :authors, :through => :SchoolArticlesAuthorsLists

  has_attached_file :asset

  def self.get_items(number)
    self.all(:limit => number)
  end
end
# == Schema Information
#
# Table name: school_articles
#
#  id                     :integer(4)      not null, primary key
#  user_id                :integer(4)
#  title                  :string(255)
#  type                   :integer(4)
#  industry_dictionary_id :integer(4)
#  patent_number          :string(255)
#  principal              :string(255)
#  tel                    :string(255)
#  content                :text
#  docs_url               :string(255)
#  scan_number            :integer(4)
#  created_at             :datetime
#  updated_at             :datetime
#  flag                   :integer(4)
#

