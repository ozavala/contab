# == Schema Information
#
# Table name: account_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  from_code  :string
#  thru_code  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AccountType < ApplicationRecord
  has_many :gl_accounts, dependent: :destroy

end
