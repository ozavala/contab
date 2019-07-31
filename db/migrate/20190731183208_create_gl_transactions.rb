class CreateGlTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :gl_transactions do |t|
      t.references :transaction_category, foreign_key: true
      t.date :transaction_date
      t.integer :from_party
      t.integer :to_party
      t.string :description

      t.timestamps
    end
  end
end
