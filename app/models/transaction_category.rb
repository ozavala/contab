# == Schema Information
#
# Table name: transaction_categories
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TransactionCategory < ApplicationRecord
  has_many :gl_transactions, dependent: :destroy 
end
