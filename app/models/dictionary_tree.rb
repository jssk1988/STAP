class DictionaryTree < ActiveRecord::Base
  has_ancestry
end
# == Schema Information
#
# Table name: dictionary_trees
#
#  id       :integer(4)      not null, primary key
#  name     :string(255)
#  ancestry :string(255)
#

