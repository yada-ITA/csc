json.array!(@customers) do |customer|
  json.extract! customer, :name, :code, :kana, :address, :tel, :fax
  json.url customer_url(customer, format: :json)
end
