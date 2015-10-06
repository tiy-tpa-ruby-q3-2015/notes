class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.datetime :date_published

      t.timestamps null: false
    end
  end
end
