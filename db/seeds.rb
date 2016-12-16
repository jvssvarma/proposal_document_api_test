# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

6.times  do |x|
  TemplateDocument.create!(title: "Doc #{x}", body: "This a mock test for body of the template document",
                           file_url: "https://g.twimg.com/about/products/tweetdeck/modal/modal1.jpg",
                           image_url: "https://about.twitter.com/products/tweetdeck")
end
