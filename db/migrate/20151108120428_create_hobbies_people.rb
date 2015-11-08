class CreateHobbiesPeople < ActiveRecord::Migration
  def change
    create_table :hobbies_people do |t|
      t.refereces :person
      t.references :hobby, index: true, foreign_key: true
    end
  end
end
