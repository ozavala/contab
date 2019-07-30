class CreateGlTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :gl_transactions do |t|
      t.references :transaction_type, foreign_key: true
      t.date :transaction_date
      t.integer :to_party_id
      t.integer :from_party_id
      t.string :description

      t.timestamps
    end
  end
end
