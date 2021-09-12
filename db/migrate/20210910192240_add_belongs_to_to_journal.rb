class AddBelongsToToJournal < ActiveRecord::Migration[6.1]
  def change
    add_reference :journals, :user, null: false, foreign_key: true
  end
end
