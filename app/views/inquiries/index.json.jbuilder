json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :receptiondate, :contact, :client, :memo
  json.url inquiry_url(inquiry, format: :json)
end
