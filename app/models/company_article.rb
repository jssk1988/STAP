class CompanyArticle < ActiveRecord::Base
  belongs_to :user
  has_many :company_keywords

  def self.get_items(number)
    self.all(:limit => number)
  end
end
# == Schema Information
#
# Table name: company_articles
#
#  id                     :integer(4)      not null, primary key
#  user_id                :integer(4)
#  industry_dictionary_id :integer(4)
#  title                  :string(255)
#  money                  :integer(10)
#  principal              :string(255)
#  tel                    :string(255)
#  content                :text
#  cooperation_type       :string(255)
#  docs_url               :string(255)
#  scan_number            :integer(4)
#  created_at             :datetime
#  updated_at             :datetime
#  flag                   :integer(4)
#

