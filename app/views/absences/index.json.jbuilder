json.array!(@absences) do |absence|
  json.extract! absence, :id, :absenceType, :permision, :startTime, :endTime, :total
  json.url absence_url(absence, format: :json)
end
