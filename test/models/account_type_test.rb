# == Schema Information
#
# Table name: account_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  from_code  :string
#  thru_code  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AccountTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
