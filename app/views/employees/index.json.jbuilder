json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :employee_number, :email, :work_phone, :mobile, :company_id
  json.url employee_url(employee, format: :json)
end
