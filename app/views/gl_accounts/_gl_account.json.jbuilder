json.extract! gl_account, :id, :account_type_id, :account_code, :parent_code, :name, :description, :created_at, :updated_at
json.url gl_account_url(gl_account, format: :json)
