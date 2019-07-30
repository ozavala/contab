# == Schema Information
#
# Table name: account_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  init_num   :string
#  end_num    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AccountTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
