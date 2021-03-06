json.array!(@actuals) do |actual|
  json.extract! actual, :id, :period, :cost_centre_description, :account, :account_description, :account_type, :reference, :customer_or_supplier, :gl_date, :po_number, :description, :debit, :credit, :total, :cost_centre, :team
  json.url actual_url(actual, format: :json)
end
