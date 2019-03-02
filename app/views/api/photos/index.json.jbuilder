@photos.each do |photo|
  json.set! photo.id do
    json.extract! photo, :id, :title, :description, :uploader_id
    json.photo_url url_for(photo.picture)
  end
end