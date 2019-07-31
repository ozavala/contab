# == Schema Information
#
# Table name: account_categories
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AccountCategory < ApplicationRecord
  has_many :gl_accounts, dependent: :destroy 
end
