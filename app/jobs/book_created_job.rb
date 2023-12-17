class BookCreatedJob < ApplicationJob
  queue_as :default

  def perform(user, book)
    UserMailer.book_created(user, book).deliver_later
  end
end