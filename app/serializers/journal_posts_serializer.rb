class JournalPostsSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :content, :summary

  def summary
    "#{self.object.content[0-49]}"
  end
end
