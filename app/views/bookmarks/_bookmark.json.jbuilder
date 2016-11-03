json.extract! bookmark, :id, :title, :link, :note, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)