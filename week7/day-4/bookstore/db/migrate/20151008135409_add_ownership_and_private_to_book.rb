class AddOwnershipAndPrivateToBook < ActiveRecord::Migration
  def change
    add_column :books, :created_by, :integer
    add_column :books, :private, :boolean
  end
end
