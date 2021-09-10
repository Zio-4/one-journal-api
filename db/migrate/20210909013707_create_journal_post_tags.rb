class CreateJournalPostTags < ActiveRecord::Migration[6.1]
  def change
    create_table :journal_post_tags do |t|
      t.belongs_to :journal_post, null: false, foreign_key: true
      t.belongs_to :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
