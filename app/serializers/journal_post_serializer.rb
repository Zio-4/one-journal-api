class JournalPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :post_date, :content, :summary
  belongs_to :journal

  def summary
    "#{self.object.content[0..49]...}"
  end

  def post_date
    "#{self.object.created_at.strftime("%b %d, %Y")}"
  end
end
