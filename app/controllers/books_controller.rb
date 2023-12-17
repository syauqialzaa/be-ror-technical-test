class BooksController < ApplicationController
  before_action :set_authors, only: [:new, :create]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      BookCreatedJob.perform_later(current_user, @book)

      redirect_to books_path, notice: "Book added successfully."
    else
      render :new
    end
  end

  private

  def set_authors
    @authors = Author.all
  end

  def book_params
    params.require(:book).permit(:title, :genre, :year, :author_id)
  end
end
