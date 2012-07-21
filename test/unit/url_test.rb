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

require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
