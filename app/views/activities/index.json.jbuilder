json.array!(@activities) do |activity|
  json.extract! activity, :id, :nameActivity, :typeActivity, :note, :dateActivity, :endDateActivity, :totalTimeActivity
  json.url activity_url(activity, format: :json)
end
