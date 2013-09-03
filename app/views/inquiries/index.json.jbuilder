json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :receptiondate, :contact, :client, :memo, :deadline, :title
  json.url inquiry_url(inquiry, format: :json)
end
