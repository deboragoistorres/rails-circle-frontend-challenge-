require 'http'

class BooksService
  API_URL = 'http://localhost:8000/books'

  def self.fetch_books
    response = HTTP.get(API_URL, headers: { accept: 'application/json' })
    if response.status.success?
      JSON.parse(response.body.to_s)
    else
      []
    end
  end
end
