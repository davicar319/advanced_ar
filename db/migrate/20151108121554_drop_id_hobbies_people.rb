class DropIdHobbiesPeople < ActiveRecord::Migration
  def change
  	drop_table :hobbies_people
  	  create_table :hobbies_people, id: false do |t|
        t.references :person, index: true, foreign_key: true
        t.references :hobby, index: true, foreign_key: true
      end
  end
end
