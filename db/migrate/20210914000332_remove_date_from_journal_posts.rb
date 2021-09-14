class RemoveDateFromJournalPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :journal_posts, :date, :string
  end
end
