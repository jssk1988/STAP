class CreateCompanyUserInfos < ActiveRecord::Migration
  def change
    create_table :company_user_infos do |t|
      t.references :user
      t.string :real_name
      t.string :id_card
      t.string :position
      t.string :tel
      t.string :company_name
      t.date :found_time
      t.references :industry_dictionary
      t.float :register_fund
      t.string :authentication_files_url
      t.text :description

      t.timestamps
    end
    add_index :company_user_infos, :user_id
    add_index :company_user_infos, :industry_dictionary_id
  end
end
