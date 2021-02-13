class BookSearchController < ApplicationController
  def new

  end

  def index
    @titles = BookSearch.new(search_params).titles
  end

  def search_params
    params.permit(:title_query)
  end
end
