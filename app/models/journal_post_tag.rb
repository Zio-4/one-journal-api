class JournalPostTag < ApplicationRecord
  belongs_to :Journal_post
  belongs_to :Tag
end
