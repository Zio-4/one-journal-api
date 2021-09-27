class Journal < ApplicationRecord
    belongs_to :user
    has_many :journal_posts, dependent: :destroy

    validates :title, presence: true, length: {maximum: 40}
    validates :description, length: {maximum: 5000}, allow_blank: true
end
