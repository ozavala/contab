class CreateTransactionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_details do |t|
      t.references :gl_transaction, foreign_key: true
      t.references :gl_account, foreign_key: true
      t.string :document_number
      t.decimal :db_amount, precision: 20, scale: 10
      t.decimal :cr_amount, precision: 20, scale: 10
      t.decimal :tr_amount, precision: 20, scale: 10
      t.integer :c_flag
      t.string :description

      t.timestamps
    end
  end
end
