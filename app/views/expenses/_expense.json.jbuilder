json.extract! expense, :id, :amount, :date, :detail, :created_at, :updated_at
json.url expense_url(expense, format: :json)
