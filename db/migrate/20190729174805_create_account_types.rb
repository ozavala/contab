class CreateAccountTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :account_types do |t|
      t.string :name
      t.string :init_num
      t.string :end_num

      t.timestamps
    end
  end
end
