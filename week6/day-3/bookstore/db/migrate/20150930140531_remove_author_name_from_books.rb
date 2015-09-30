class RemoveAuthorNameFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :author_name, :string
  end
end
