# == Schema Information
#
# Table name: gl_accounts
#
#  id              :bigint           not null, primary key
#  account_type_id :bigint
#  account_code    :string
#  name            :string
#  description     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  parent_id       :integer
#

class GlAccount < ApplicationRecord
  belongs_to :account_type
  has_many :transaction_details, dependent: :destroy
  belongs_to :parent_acct, class_name: 'GlAccount', foreign_key: 'parent_id', optional: true
end
