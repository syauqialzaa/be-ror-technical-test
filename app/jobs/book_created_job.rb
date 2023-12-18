class BookCreatedJob < ApplicationJob
  queue_as :default

  def perform(user, book)
    BookMailer.new_book_email(user, book).deliver_later
  end
end