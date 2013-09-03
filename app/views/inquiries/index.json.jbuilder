json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :receeptiondate, :contact, :client, :memo
  json.url inquiry_url(inquiry, format: :json)
end
