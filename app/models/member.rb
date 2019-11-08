class Member < ApplicationRecord
  has_many :tags, dependent: :destroy

  validates :name, :website, presence: true

  after_create :pull_from_internet

  def friends
    friend_ids = Friendship.where(member1_id: id).or(Friendship.where(member2_id: id)).pluck(:member1_id, :member2_id).flatten.uniq.delete(id)
    Member.where(id: friend_ids)
  end

  private

  def pull_from_internet
    delay.shorten_url
    delay.scrape_headers
  end

  def shorten_url
    update(short_url: ShortURL.shorten(website, :tinyurl))
  end

  def scrape_headers
    require 'open-uri'
    doc = Nokogiri::HTML(open(website))
    headers = doc.search('h1', 'h2', 'h3').map(&:text)
    headers.each { |header| tags.create(text: header.strip) }
  end
end