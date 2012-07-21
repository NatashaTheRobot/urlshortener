# == Schema Information
#
# Table name: urls
#
#  id             :integer         not null, primary key
#  long_url       :string(255)
#  short_url_slug :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

class Url < ActiveRecord::Base
  attr_accessible :long_url, :short_url_slug
  validates_uniqueness_of :long_url, :short_url_slug
  validates_presence_of :long_url
  before_save :set_short_url_slug
  has_many :stats

  def random_string
    slug = (0..5).map{97.+(rand(25)).chr}.join
    return slug if Url.find_by_short_url_slug(slug).nil?
    random_string
  end

  def set_short_url_slug
    self.short_url_slug ||= random_string
  end

  # def stats_count
  #   if stats.empty?
  #     return 0
  #   else
  #     return stats.redirects.count
  #   end
  # end
end
