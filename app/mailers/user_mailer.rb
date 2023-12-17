class UserMailer < ApplicationMailer
  default from: 'be-ror@technicaltest.id'

  def book_created(user, book)
    @user = user
    @book = book

    mail(to: @user.email, subject: "Book added successfully!")
  end
end
