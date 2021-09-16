class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :journal_posts
end
