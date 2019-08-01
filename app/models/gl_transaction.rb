# == Schema Information
#
# Table name: gl_transactions
#
#  id                      :bigint           not null, primary key
#  transaction_category_id :bigint
#  transaction_date        :date
#  from_party              :integer
#  to_party                :integer
#  description             :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class GlTransaction < ApplicationRecord
  belongs_to :transaction_category
  has_many :transaction_details, dependent: :destroy
  accepts_nested_attributes_for :transaction_details, allow_destroy: true, reject_if: :all_blank
end
