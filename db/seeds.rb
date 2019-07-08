# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Meme.find_or_create_by(url: "https://i.imgflip.com/1h7in3.jpg", title: "Smart")
Meme.find_or_create_by(url: "https://i.imgflip.com/2wifvo.jpg", title: "Unsettling")
Meme.find_or_create_by(url: "https://i.imgflip.com/1bij.jpg", title: "One Does Not Simply")
Meme.find_or_create_by(url: "https://i.imgflip.com/26am.jpg", title: "Aliens")
Meme.find_or_create_by(url: "https://i.imgflip.com/1e7ql7.jpg", title: "Evil Kermit")
Meme.find_or_create_by(url: "https://i.imgflip.com/jrj7.jpg", title: "Laughing Men")
Meme.find_or_create_by(url: "https://i.imgflip.com/10r5wh.jpg", title: "Mr. Krabs Blur")
Meme.find_or_create_by(url: "https://i.imgflip.com/gtj5t.jpg", title: "Oprah")
Meme.find_or_create_by(url: "https://i.imgflip.com/2cp1.jpg", title: "Aging Quickly")
Meme.find_or_create_by(url: "https://i.imgflip.com/9vct.jpg", title: "Jack Sparrow Being Chased")

15.times do
  Caption.find_or_create_by(title: Faker::Hipster.sentence)
end

15.times do
  Caption.find_or_create_by(title: Faker::Hacker.say_something_smart)
end

15.times do
  Caption.find_or_create_by(title: Faker::TvShows::Seinfeld.quote)
end


15.times do
  Caption.find_or_create_by(title: Faker::TvShows::MichaelScott.quote)
end

15.times do
  Caption.find_or_create_by(title: Faker::TvShows::GameOfThrones.quote)
end
