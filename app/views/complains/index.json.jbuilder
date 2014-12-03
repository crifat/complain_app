json.array!(@complains) do |complain|
  json.extract! complain, :id, :title, :description, :latitude, :longitude, :username, :image_url, :location, :ip_address
  json.url complain_url(complain, format: :json)
end
