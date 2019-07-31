class CreateAccountTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :account_types do |t|
      t.string :name
      t.string :from_code
      t.string :thru_code

      t.timestamps
    end
  end
end
