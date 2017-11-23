json.extract! customer, :id, :customer_id, :first_name, :last_name, :phone, :adress, :city, :email, :postal_code, :created_at, :updated_at
json.url customer_url(customer, format: :json)
