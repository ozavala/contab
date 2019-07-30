class AddIndexToGlAccounts < ActiveRecord::Migration[5.2]
  def change
    add_index :gl_accounts, :parent_id
  end
end
