class JournalPost < ApplicationRecord
    belongs_to :journal
    has_many :journal_post_tags
    has_many :tags, through: :journal_post_tags
end
