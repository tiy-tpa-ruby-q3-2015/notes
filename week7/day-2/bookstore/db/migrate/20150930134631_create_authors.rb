class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.string :preferred_genre

      t.timestamps null: false
    end
  end
end
