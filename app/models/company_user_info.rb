class CompanyUserInfo < ActiveRecord::Base
  belongs_to :user
  belongs_to :industry_dictionary
end
# == Schema Information
#
# Table name: company_user_infos
#
#  id                       :integer(4)      not null, primary key
#  user_id                  :integer(4)
#  real_name                :string(255)
#  id_card                  :string(255)
#  position                 :string(255)
#  tel                      :string(255)
#  company_name             :string(255)
#  found_time               :date
#  industry_dictionary_id   :integer(4)
#  register_fund            :float
#  authentication_files_url :string(255)
#  description              :text
#  created_at               :datetime
#  updated_at               :datetime
#

