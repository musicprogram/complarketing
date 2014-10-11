json.array!(@proyects) do |proyect|
  json.extract! proyect, :id, :campaignName_id, :brandName_id, :country_id, :nameEmployee_id, :nameActivity_id, :typeActivity_id, :note_id, :dateActivity_id, :endDateActivity_id, :totalActivity_id
  json.url proyect_url(proyect, format: :json)
end
