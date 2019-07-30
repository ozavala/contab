class CreateGlAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :gl_accounts do |t|
      t.references :account_type, foreign_key: true
      t.string :account_code
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
