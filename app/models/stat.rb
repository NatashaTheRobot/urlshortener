# == Schema Information
#
# Table name: stats
#
#  id         :integer         not null, primary key
#  redirects  :integer         default(1)
#  url_id     :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Stat < ActiveRecord::Base
  attr_accessible 
  belongs_to :url

end
