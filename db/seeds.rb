# Add Author
author1 = Author.create(name: 'Albert Einstein', address: 'United States')
author2 = Author.create(name: 'Robert Galbraith', address: 'United Kingdom')

# Add Book
book1 = Book.create(title: 'The Theory Of Relativity', genre: 'Physics', year: 1905, author: author1)
book2 = Book.create(title: 'The Silkworm', genre: 'Fiction', year: 2014, author: author2)
book3 = Book.create(title: 'Lethal White', genre: 'Fiction', year: 2018, author: author2)
