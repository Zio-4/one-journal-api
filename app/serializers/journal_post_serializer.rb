class JournalPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :post_date, :content, :summary
  belongs_to :journal

  def summary
    # Summarizes the journal posts content to display on the front end
    "#{self.object.content[0..49]...}"
  end

  def post_date
    # Formats the time the journal post was created to display on the front end
    "#{self.object.created_at.strftime("%b %d, %Y")}"
  end
end
