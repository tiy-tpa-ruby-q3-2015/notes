class AddGoogleResultsToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :google_results, :text
  end
end
