class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :long_description
      t.string :focus_area

      t.timestamps null: false
    end
  end
end
