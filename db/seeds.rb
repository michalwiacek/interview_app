# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

log_1 = Log.create(name: Faker::GameOfThrones.character, description: Faker::GameOfThrones.quote, status: "new")
log_2 = Log.create(name: Faker::GameOfThrones.character, description: Faker::GameOfThrones.quote, status: "new")
log_3 = Log.create(name: Faker::GameOfThrones.character, description: Faker::GameOfThrones.quote, status: "closed")


2.times do
  log_1.log_comments.create(comment: Faker::HarryPotter.quote)
end

3.times do
  log_2.log_comments.create(comment: Faker::HarryPotter.quote)
end

log_3.log_comments.create(comment: Faker::HarryPotter.quote)
