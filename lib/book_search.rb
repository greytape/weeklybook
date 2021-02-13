class BookSearch
  def initialize(search_params)
    @search_params = search_params
  end

  def titles
    response.map do |book|
      book['volumeInfo']['title']
    end
  end

  private

  def response
    JSON.parse(api_query.body)['items']
  end

  def api_query
    Faraday.get(google_books_api_url, query_params)
  end

  def google_books_api_url
    'https://www.googleapis.com/books/v1/volumes'
  end

  def query_params
    {
      q: "intitle:#{title_query}",
      key: google_books_api_key
    }
  end

  def title_query
    @search_params[:title_query]
  end

  def google_books_api_key
    'AIzaSyBNiTy9Et81igNmLvZNpUrTtEquAAhl7EE'
  end
end