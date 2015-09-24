class AddShoeSize < ActiveRecord::Migration
  def self.up
    add_column :things, :shoe_size, :string
    add_column :things, :favorite_color, :string
  end

  def self.down
    remove_column :things, :favorite_color
    remove_column :things, :shoe_size
  end
end
