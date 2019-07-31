class GlAccount < ApplicationRecord
  belongs_to :account_type
  has_many :transaction_details, dependent: :destroy
end
