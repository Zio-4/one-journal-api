class Journal < ApplicationRecord
    belongs_to :user
    has_many :journal_posts
end
