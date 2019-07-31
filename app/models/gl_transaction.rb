# == Schema Information
#
# Table name: gl_transactions
#
#  id                  :bigint           not null, primary key
#  transaction_type_id :bigint
#  transaction_date    :date
#  from_party          :integer
#  to_party            :integer
#  description         :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class GlTransaction < ApplicationRecord
  belongs_to :transaction_type
  has_many :transaction_details, dependent: :destroy
end
