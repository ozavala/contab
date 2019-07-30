class CreateTransactionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_details do |t|
      t.references :gl_transaction, foreign_key: true
      t.references :gl_account, foreign_key: true
      t.decimal :amount
      t.string :db_flag

      t.timestamps
    end
  end
end
