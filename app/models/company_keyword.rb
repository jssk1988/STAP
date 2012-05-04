class CompanyKeyword < ActiveRecord::Base
  belongs_to :company_article
end
# == Schema Information
#
# Table name: company_keywords
#
#  id                 :integer(4)      not null, primary key
#  name               :string(255)
#  company_article_id :integer(4)
#  type               :boolean(1)
#

