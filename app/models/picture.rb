class Picture < ApplicationRecord

  def self.one_month_ago
    Picture.where(("created_at > ?"), 1.month.ago).limit(5)
  end

end
