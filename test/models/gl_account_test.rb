# == Schema Information
#
# Table name: gl_accounts
#
#  id                  :bigint           not null, primary key
#  account_category_id :bigint
#  account_code        :string
#  parent_code         :string
#  name                :string
#  description         :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class GlAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
