class AddAncestryToDictionaryTrees < ActiveRecord::Migration
  def self.up
    add_column :dictionary_trees, :ancestry, :string
    add_index :dictionary_trees, :ancestry
  end

  def self.down
    remove_index :dictionary_trees, :ancestry
    remove_index :dictionary_trees, :ancestry
  end
end
