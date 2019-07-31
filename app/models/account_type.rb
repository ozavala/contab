class AccountType < ApplicationRecord
  has_many :gl_accounts, dependent: :destroy

end
