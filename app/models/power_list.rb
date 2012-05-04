class PowerList < ActiveRecord::Base
  belongs_to :user
  belongs_to :sys_role
end\n# == Schema Information
#
# Table name: power_lists
#
#  id          :integer(4)      not null, primary key
#  user_id     :integer(4)
#  sys_role_id :integer(4)
#

