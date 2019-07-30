# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AccountType.destroy_all

AccountType.create(
  name: 'Assets',
  init_num: '1',
  end_num: '2'
)
AccountType.create(
  name: 'Liability',
  init_num: '2',
  end_num: '3'
)
AccountType.create(
  name: 'Equity',
  init_num: '3',
  end_num: '4'
)

AccountType.create(
  name: 'Expenses',
  init_num: '4',
  end_num: '5'
)
AccountType.create(
  name: 'Income',
  init_num: '5',
  end_num: '6'
)

assets = AccountType.find_by(name: 'Assets')
liability = AccountType.find_by(name: 'Liability')
equity = AccountType.find_by(name: 'Equity')
expenses = AccountType.find_by(name: 'Expenses')
income = AccountType.find_by(name: 'Income')

GlAccount.destroy_all

assets.gl_accounts.create(
  account_code: '1',
  name: 'ASSETS',
  parent_id: nil
)
assets.gl_accounts.create(
  account_code: '10',
  name: 'CURRENT ASSETS',
  parent_id: '1'
)
assets.gl_accounts.create(
  account_code: '100',
  name: 'Cash',
  parent_id: '10',
  description: 'Petty Cash'
)
assets.gl_accounts.create(
  account_code: '101',
  name: 'Cash in Wallet',
  parent_id: '10',
  description: 'Cash in Wallet'
)
assets.gl_accounts.create(
  account_code: '102',
  name: 'Cheking Account',
  parent_id: '10',
  description: 'Checking Account'
)

assets.gl_accounts.create(
  account_code: '103',
  name: 'Savings Account',
  parent_id: '10',
  description: 'Savings Account'
)
equity.gl_accounts.create(
  account_code: '3',
  name: 'EQUITY',
  parent_id: nil,
  description: 'Equity'
)
equity.gl_accounts.create(
  account_code: '31',
  name: 'Opening Balances',
  parent_id: 3,
  description: 'Opening Balances'
)

equity.gl_accounts.create(
  account_code: '32',
  name: 'Retained Earnings',
  parent_id: 3,
  description: 'Retained Earnings'
)

liability.gl_accounts.create(
  account_code: '20',
  name: 'Accounts Payable',
  parent_id: '2',
  description: 'Accounts Payable'
)

liability.gl_accounts.create(
  account_code: '21',
  name: 'Credit Card',
  parent_id: '2',
  description: 'Credit Card'
)
liability.gl_accounts.create(
  account_code: '22',
  name: 'VA Sales tax',
  parent_id: '2',
  description: 'VA Sales Tax'
)

income.gl_accounts.create(
  account_code: '5',
  name: 'INCOME',
  parent_id: nil,
  description: ''
)
income.gl_accounts.create(
  account_code: '51',
  name: 'Bonus',
  parent_id: 5,
  description: 'Bonus'
)
income.gl_accounts.create(
  account_code: '56',
  name: 'Sales',
  parent_id: 5,
  description: 'Sales'
)
