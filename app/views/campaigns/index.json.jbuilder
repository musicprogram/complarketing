json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :campaignName, :campaignCode, :status
  json.url campaign_url(campaign, format: :json)
end
