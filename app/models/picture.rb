class Picture < ApplicationRecord

  validates :artist, :title, :url, presence: true
  validates :title, length: { in: 3..20 }
  validates :url, uniqueness: true
  validates_format_of :url, :with => URI::regexp(%w(http https))

  def self.one_month_ago
    Picture.where(("created_at < ?"), 1.month.ago).limit(5)
  end

  def self.pictures_created_in_year(year)
    Picture.where("cast(strftime('%Y', created_at) as int) = ?", year)
  end
end
