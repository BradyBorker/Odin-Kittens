# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

names = ['Charlie', 'Samuel', 'Braunson', 'Bastet', 'Athena', 'Zeus']

Kitten.destroy_all
names.each do |name|
    kitten = Kitten.new
    kitten.name = name
    kitten.age = rand(1..25)
    kitten.softness = rand(1..10)
    kitten.cuteness = rand(1..10)
    kitten.save!
end