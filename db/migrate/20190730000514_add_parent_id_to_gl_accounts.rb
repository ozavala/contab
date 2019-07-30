class AddParentIdToGlAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :gl_accounts, :parent_id, :integer
  end
end
