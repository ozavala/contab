json.extract! gl_transaction, :id, :transaction_type_id, :transaction_date, :to_party_id, :from_party_id, :description, :created_at, :updated_at
json.url gl_transaction_url(gl_transaction, format: :json)
