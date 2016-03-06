json.array!(@leads) do |lead|
  json.extract! lead, :id, :name, :email, :stage_id
  json.url lead_url(lead, format: :json)
end
