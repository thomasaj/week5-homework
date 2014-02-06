class CreateComics < ActiveRecord::Migration
	def change
		create_table :comics do |t|
			t.string :title
			t.string :description
			t.string :image
			t.integer :issue_num
			t.integer :year
			t.timestamps
		end
	end
end
