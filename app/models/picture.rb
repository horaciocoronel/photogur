class Picture < ApplicationRecord

    belongs_to :user


  validates :artist, :title, :url, presence: { message: "Avast scallywag! Don't be a squiffy! Complete the fields! Yo-ho-ho. Complete %{attribute}" }
  validates :title, length: { in: 3..20, message: "Ahoy matey! You be a Landlubber! Don't be a great grand Son of a Biscuit Eater. Title should be 3 Doubloons minimum! Scurvy dog! "}
  validates :url, uniqueness: { message: "Shiver me timbers! I already have thar url! Walk the plank!"}
  validates_format_of :url, :with => URI::regexp(%w(http https)), message: "Enough! Thar is not even a correct %{attribute} Walk the plank!"

  def self.one_month_ago
    Picture.where(("created_at < ?"), 1.month.ago).limit(5)
  end

  def self.pictures_created_in_year(year)
    Picture.where("cast(strftime('%Y', created_at) as int) = ?", year)
  end
end
