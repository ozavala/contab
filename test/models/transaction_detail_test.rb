# == Schema Information
#
# Table name: transaction_details
#
#  id                :bigint           not null, primary key
#  gl_transaction_id :bigint
#  gl_account_id     :bigint
#  amount            :decimal(, )
#  db_flag           :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class TransactionDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
