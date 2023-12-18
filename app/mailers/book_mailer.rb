class BookMailer < ApplicationMailer
  def new_book_email(user, book)
    @user = user
    @book = book
    
    mail(
      from: 'be-ror@technicaltest.id',
      to: @user.email,
      subject: "Book added successfully."
    )
  end
end
