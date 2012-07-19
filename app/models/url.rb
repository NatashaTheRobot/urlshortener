class Url < ActiveRecord::Base
  attr_accessible :long_url, :short_url_slug
  
  validates_uniqueness_of :long_url, :short_url_slug
  
  before_save :set_short_url_slug
  
  def random_string
    slug = (0..5).map{65.+(rand(25)).chr}.join.downcase!
    return slug if Url.find_by_short_url_slug(slug).nil?
    random_string
  end
  
  def set_short_url_slug
    self.short_url_slug ||= random_string
  end
  
end
