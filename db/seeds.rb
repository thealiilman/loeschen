# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
author = Author.create(name: 'Oliver Guinness')
['The Polesitter', 'Von Scheiße zu Gut'].each do |title|
  author.books.create(title: title)
end
publisher = Publisher.create(name: 'Bloomsbury', authors: [author])
