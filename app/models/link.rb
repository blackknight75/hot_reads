class Link < ApplicationRecord
  def self.best_ten
      Link.where('updated_at >= ?', 1.day.ago)
      .order('view_count desc')
      .limit(10)
    end

    def self.top_link
      Link.where('updated_at >= ?', 1.day.ago)
      .order('view_count desc')
      .limit(1)
    end
end
