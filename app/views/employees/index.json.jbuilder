json.array!(@employees) do |employee|
  json.extract! employee, :id, :nameEmployee, :jobDescription, :document, :email
  json.url employee_url(employee, format: :json)
end
