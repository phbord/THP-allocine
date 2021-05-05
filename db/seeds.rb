# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |index|
    prng = Random.new
    genre_name = Genre.find(Random.new.rand(1..Genre.all.length)).name

    Movie.create!(
        name: Faker::Lorem.sentence(3, false, 0).chop,
        year: prng.rand(2222),
        genre: genre_name,
        synopsis: Faker::Lorem.paragraph,
        director: Faker::Name.name,
        allocine_rating: prng.rand(5),
        my_rating: prng.rand(5),
        already_seen: true
    )
end

p "Created #{Movie.count} movies"