class BooksController < ApplicationController
    #skip_before_action :verify_athenticity_token
    protect_from_forgery
  def create
    @book = Book.create(name: params[:name])

    render 'books/create'
  end
end
