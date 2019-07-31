# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AccountCategory.destroy_all

AccountCategory.create(
  name: 'Assets',
  description: 'Assets are what the enterprise owns'
)
AccountCategory.create(
  name: 'Liability',
  description: 'Liabilities are what the enterprise owes.'
)
AccountCategory.create(
  name: 'Equity',
  description: "Equity represents the shareholder's stake in the company."
)

AccountCategory.create(
  name: 'Expenses',
  description: 'Whatever the enterprise consumes is recorded in a consumption or expense account'
)
AccountCategory.create(
  name: 'Income',
  description: "Whatever the enterprise produces is recorded in a production or income account"
)

assets = AccountCategory.find_by(name: 'Assets')
liability = AccountCategory.find_by(name: 'Liability')
equity = AccountCategory.find_by(name: 'Equity')
expenses = AccountCategory.find_by(name: 'Expenses')
income = AccountCategory.find_by(name: 'Income')

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

#### TRANSACTIONS ####
TransactionCategory.destroy_all

TransactionCategory.create(
  name: 'Adjustment',
  description: 'Adjustment of accounts, inventory, depreciation'
)
TransactionCategory.create(
  name: 'Gl-Transaction',
  description: 'Internal transactions, purchase, sales, withdrawal, expenses, bank deposits'
)
TransactionCategory.create(
  name: 'Transference',
  description: 'Internal and external transferences, prepayment, deposit in guaranty'
)

puts 'Created TransactionCategory Accounts '

adtransac = TransactionCategory.find_by(name: 'Adjustment')
gltransac = TransactionCategory.find_by(name: 'Gl-Transaction')

GlTransaction.destroy_all

t1 = adtransac.gl_transactions.create(
  transaction_date: Time.now,
  description: 'Initial balance'
)

t1.transaction_details.create(
  gl_account_id: 12,
  document_number: '1234-5',
  cr_amount: 2000.00,
  description: 'Stock holder deposit'

)
puts 'Transaction Details created'
