json.array!(@companies) do |company|
  json.extract! company, :id, :name, :street_1, :street_2, :city, :state, :zip_code, :country
  json.url company_url(company, format: :json)
end
