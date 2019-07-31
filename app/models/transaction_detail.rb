# == Schema Information
#
# Table name: transaction_details
#
#  id                :bigint           not null, primary key
#  gl_transaction_id :bigint
#  gl_account_id     :bigint
#  document_number   :string
#  db_amount         :decimal(20, 10)
#  cr_amount         :decimal(20, 10)
#  tr_amount         :decimal(20, 10)
#  c_flag            :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class TransactionDetail < ApplicationRecord
  belongs_to :gl_transaction
  belongs_to :gl_account
end
