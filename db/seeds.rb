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
  from_code: '1',
  to_code: '2'
)
AccountType.create(
  name: 'Liability',
  from_code: '2',
  to_code: '3'
)
AccountType.create(
  name: 'Equity',
  from_code: '3',
  to_code: '4'
)

AccountType.create(
  name: 'Expenses',
  from_code: '4',
  to_code: '5'
)
AccountType.create(
  name: 'Income',
  from_code: '5',
  to_code: '6'
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
  parent_code: nil,
  description: nil
)

assets.gl_accounts.create(
  account_code: '10',
  name: 'CURRENT ASSETS',
  parent_code: '1',
  description: nil
)

assets.gl_accounts.create(
  account_code: '100',
  name: 'Cash',
  parent_code: '10',
  description: 'Petty Cash'
)

assets.gl_accounts.create(
  account_code: '101',
  name: 'Cash in Wallet',
  parent_code: '10',
  description: 'Cash in Wallet'
)

assets.gl_accounts.create(
  account_code: '102',
  name: 'Cheking Account',
  parent_code: '10',
  description: 'Checking Account'
)

assets.gl_accounts.create(
  account_code: '103',
  name: 'Savings Account',
  parent_code: '10',
  description: 'Savings Account'
)

puts "#{GlAccount.count} Assets Accounts created"

liability.gl_accounts.create(
  account_code: '2',
  name: 'LIABILITIES',
  parent_code: nil,
  description: nil
)

liability.gl_accounts.create(
  account_code: '20',
  name: 'Accounts Payable',
  parent_code: '2',
  description: 'Accounts Payable'
)

liability.gl_accounts.create(
  account_code: '21',
  name: 'Credit Card',
  parent_code: '2',
  description: 'Credit Card'
)

liability.gl_accounts.create(
  account_code: '22',
  name: 'VA Sales tax',
  parent_code: '2',
  description: 'VA Sales Tax'
)

puts 'Liabilities Gl Accounts created'

equity.gl_accounts.create(
  account_code: '3',
  name: 'EQUITY',
  parent_code: nil,
  description: nil
)

equity.gl_accounts.create(
  account_code: '31',
  name: 'Opening Balances',
  parent_code: '3',
  description: 'Opening Balances'
)

equity.gl_accounts.create(
  account_code: '32',
  name: 'Retained Earnings',
  parent_code: '3',
  description: 'Retained Earnings'
)

puts "Equities Accounts created"


expenses.gl_accounts.create(
  account_code: '4',
  name: 'EXPENSES',
  parent_code: nil,
  description: ''
)
expenses.gl_accounts.create(
  account_code: '424',
  name: 'Office Supplies',
  parent_code: '4',
  description: 'Office Supplies'
)
expenses.gl_accounts.create(
  account_code: '434',
  name: 'Office Supplies',
  parent_code: '4',
  description: 'Office Supplies'
)

puts 'Expenses Accounts added'

income.gl_accounts.create(
  account_code: '5',
  name: 'INCOME',
  parent_code: nil,
  description: ''
)

income.gl_accounts.create(
  account_code: '51',
  name: 'Bonus',
  parent_code: '5',
  description: 'Bonus'
)

income.gl_accounts.create(
  account_code: '56',
  name: 'Sales',
  parent_code: '5',
  description: 'Sales'
)
puts "Income accounts created"
