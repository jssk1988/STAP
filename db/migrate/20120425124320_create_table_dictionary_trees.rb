class CreateTableDictionaryTrees < ActiveRecord::Migration
  def up
    create_table :dictionary_trees do |t|
      t.string :name
    end
  end

  def down
    drop_table :dictionary_trees
  end
end
