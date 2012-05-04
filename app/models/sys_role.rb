class SysRole < ActiveRecord::Base
  #has_and_belongs_to_many :users
  has_many :power_lists
  has_many :users, :through => :power_lists
end
# == Schema Information
#
# Table name: sys_roles
#
#  id          :integer(4)      not null, primary key
#  role_name   :string(255)
#  url         :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

