class TransactionType < ApplicationRecord
  has_many :gl_transactions, dependent: :destroy
end
