class Tag < ApplicationRecord
    has_many :journal_post_tags
    has_many :journal_posts, through: :journal_post_tags
end
