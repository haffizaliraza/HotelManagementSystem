json.extract! booking, :id, :name, :cnic, :phone, :email, :address, :bill, :other_charges, :sub_total, :discount, :total, :check_in, :check_out, :created_at, :updated_at
json.url booking_url(booking, format: :json)
