class SchoolUserInfo < ActiveRecord::Base
	belongs_to :user
  belongs_to :subject_dictionary
end
# == Schema Information
#
# Table name: school_user_infos
#
#  id                    :integer(4)      not null, primary key
#  user_id               :integer(4)
#  real_name             :string(255)
#  id_card               :string(255)
#  school_name           :string(255)
#  qualification         :string(255)
#  position              :string(255)
#  photo_url             :string(255)
#  tel                   :string(255)
#  description           :text
#  subject_dictionary_id :integer(4)
#  research_info         :text
#

