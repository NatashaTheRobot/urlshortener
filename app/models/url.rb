class Url < ActiveRecord::Base
  attr_accessible :long_url, :short_url_slug
  
  validates_uniqueness_of :long_url, :short_url_slug
  
  before_save :set_short_url_slug
  
  def random_string
    (0..5).map{65.+(rand(25)).chr}.join.downcase!
  end
  
  def set_short_url_slug
    slug = random_string
    if Url.all_short_url_slugs.include?(slug) 
      set_short_url_slug
    else
      self.short_url_slug ||= random_string
    end
  end
  
  def self.all_short_url_slugs
    Url.select(:short_url_slug).collect { |url| url.short_url_slug }
  end
  
end
