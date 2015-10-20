class AddCoverPageImageToBooks < ActiveRecord::Migration
  def change
    add_column :books, :cover_page_id, :string
  end
end
