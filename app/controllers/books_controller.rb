class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    redirect_to 'books#index'
  end

  def index
    @current_group = Group.find_by(id: params[:group_id])
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
