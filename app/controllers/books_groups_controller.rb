class BooksGroupsController < ApplicationController
  def edit
    @group = Group.find_by(id: params[:group_id])
    @book = Book.find_by(id: params[:id])
    @group.books << @book
    redirect_to @group
  end
end
