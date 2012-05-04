class Award < ActiveRecord::Base
  belongs_to :school_article
end\n# == Schema Information
#
# Table name: awards
#
#  id                :integer(4)      not null, primary key
#  school_article_id :integer(4)
#  name              :string(255)
#  project_name      :string(255)
#  department        :string(255)
#  type              :integer(4)
#  degree            :integer(4)
#  award_time        :date
#  who_finished      :string(255)
#

