class JournalPostsSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :content, :summary

  def summary
    "#{self.object.content[0-49]}"
  end
end
