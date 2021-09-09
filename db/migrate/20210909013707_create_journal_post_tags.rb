class CreateJournalPostTags < ActiveRecord::Migration[6.1]
  def change
    create_table :journal_post_tags do |t|
      t.belongs_to :Journal_post, null: false, foreign_key: true
      t.belongs_to :Tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
