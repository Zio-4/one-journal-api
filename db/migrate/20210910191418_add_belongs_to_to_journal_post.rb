class AddBelongsToToJournalPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :journal_posts, :journal, null: false, foreign_key: true
  end
end
