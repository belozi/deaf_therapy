json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :age, :street_address, :city, :state, :zip, :phone, :therapist, :therapist_email, :therapist_phone
  json.url user_url(user, format: :json)
end
