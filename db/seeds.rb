# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create({name: "Stiff Little Fingers", bio: "Irish punk band."})
Artist.create({name: "The Clash", bio: "English punk band."})
Artist.create({name: "The Hold Steady", bio: "American rock band."})

Song.create({name: "Spanish Bombs", artist_id: 2, genre_id: 1})
Song.create({name: "Alternative Ulster", artist_id: 1, genre_id: 1})
Song.create({name: "Hot Soft Light", artist_id: 3, genre_id: 2})

Genre.create({name: "Punk"})
Genre.create({name: "Rock"})
