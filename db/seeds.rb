# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 require "faker"

# 100.times do
#
#
#   libraries = Library.new(
#       name_l: Faker::TvShows::BreakingBad.episode,
#   city_l: Faker::Address.city,
#   country_l: Faker::Address.country,
#   age_l: rand(100),
#   books_l: Faker::Book.title,
#   cards_l: Faker::Book.publisher
#
#   )
#   libraries.save
#
# end
#
# #########
#
# 100.times do
#
#   books = Book.new(
#       name_b: Faker::Book.title,
#       author_b: Faker::Book.author,
#       ganre_b: Faker::Book.genre,
#       library_id: rand(201..301)
#
#
#   )
#   books.save
#
# end
#
# ##########
#
#


# 100.times do
#
#   ganres = Ganre.new(
#       name_g: Faker::Book.genre,
#       fame: Faker::Beer.brand,
#       book_id: rand(10..100)
#
#
#   )
#   ganres.save
#
# end




def Cr_u()
connection = ActiveRecord::Base.connection()
 connection.execute("pragma foreign_keys = on")
connection.execute("INSERT INTO Users (name_u, surname_u, age_u, created_at, updated_at, card_id) VALUES
('User 1', 'Sur1', 22,datetime(), datetime(), 4),
   ('User 2','Sur2',55 ,datetime(), datetime(),2),
   ('User 3', 'Sur3',33,datetime(), datetime(),5)")
end



def Cr_a()
connection = ActiveRecord::Base.connection()
connection.execute("pragma foreign_keys = on")
connection.execute("INSERT INTO Authors (name_a, surname_a, created_at, updated_at, book_id, age_a) VALUES
('Author1', 'Sura1', datetime(), datetime(), 15, 44),
   ('Author2', 'Sura2', datetime(), datetime(), 25, 21),
   ('Author3', 'Sura3', datetime(), datetime(), 30, 27)")
end




def Cr_c()
  connection = ActiveRecord::Base.connection()
  connection.execute("pragma foreign_keys = on")
  connection.execute("INSERT INTO Cards (name_c, since_year, created_at, updated_at, library_id) VALUES
('Card1',1977,datetime(), datetime(), 206),
   ('Card2', 2006,datetime(), datetime(), 222),
   ('Card3', 2000,datetime(), datetime(), 211)")
end


#
# 33.times do Cr_a()
# end
#
# 33.times do Cr_c()
# end

#
#
# 33.times do Cr_u()
# end
connection = ActiveRecord::Base.connection()
connection.execute("UPDATE authors SET name_a = 'Vasya_p' WHERE id = 110")
connection.execute("UPDATE ganres SET fame = 'TOOFAMOUS' WHERE book_id = 99")
connection.execute("UPDATE books SET name_b = 'MAINLIBRARY' WHERE author_b = 'Malinda Hudson'")

Library.where(id:301).update(books_l:'MAINLIBRARY')
Card.where(name_c:'Card3').update(name_c:'MAINCARD')
User.where(card_id:5).update(name_u:'MAINUSER')




connection.execute("DROP VIEW IF EXISTS LibBook")
connection.execute("CREATE VIEW LibBook AS SELECT libraries.name_l, libraries.books_l, books.name_b
FROM libraries INNER JOIN books ON libraries.id = books.library_id")

connection.execute("DROP VIEW IF EXISTS LibCard")
connection.execute("CREATE VIEW LibCard AS SELECT libraries.name_l, libraries.cards_l, cards.name_c
FROM libraries INNER JOIN cards ON libraries.cards_l = cards.name_c")





