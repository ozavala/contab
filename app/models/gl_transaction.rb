class GlTransaction < ApplicationRecord
  belongs_to :transaction_type
  has_many :transaction_details, dependent: :destroy
end
