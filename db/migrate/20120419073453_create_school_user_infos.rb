class CreateSchoolUserInfos < ActiveRecord::Migration
  def change
	create_table :school_user_infos do |t|
		t.references :user
		t.string :real_name
		t.string :id_card
		t.string :school_name
		t.string :qualification
		t.string :position
		t.string :photo_url
		t.string :tel
		t.text :description
		t.references :subject_dictionary
		t.text :research_info
	end
	add_index :school_user_infos, :user_id
  end

end
