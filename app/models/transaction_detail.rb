class TransactionDetail < ApplicationRecord
  belongs_to :gl_transaction
  belongs_to :gl_account
end
