class BooksGroupController < ApplicationController
  def create
    @group = Group.find_by(id: params[:group_id])
    @book = Book.find_by(id: params[:book_id])
    @group.books << @book
    redirect_to @group
  end
end
