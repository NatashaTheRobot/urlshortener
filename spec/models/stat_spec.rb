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

require 'spec_helper'

describe Stat do
  pending "add some examples to (or delete) #{__FILE__}"
end
