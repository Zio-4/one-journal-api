class CreateJournalPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :journal_posts do |t|
      t.string :title
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
