json.extract! book_commentary, :id, :commentary, :book_id, :created_at, :updated_at
json.url book_commentary_url(book_commentary, format: :json)