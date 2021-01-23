class BooksController < ApplicationController
  def new
    @book = Book.new
    @current_group = current_group
  end

  def create
    @book = Book.create(book_params)
    redirect_to books_url(group_id: current_group.id)
  end

  def index
    @current_group = current_group
  end

  def show
  end

  def link_book
    @group = Group.find_by(id: params[:group_id])
    redirect_to @group
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end
end
