class TestMigration < ActiveRecord::Migration
  def self.up
    create_table :things do |t|
      t.column :name, :string, :null => false
      t.column :age,  :integer, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :things
  end
end
