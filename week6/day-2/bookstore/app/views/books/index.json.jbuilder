json.array!(@books) do |book|
  json.extract! book, :id, :title, :author_name, :date_published
  json.url book_url(book, format: :json)
end
