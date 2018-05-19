# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Season.destroy_all
Serie.destroy_all


def load_image(name)
  filepath = Rails.root.join("db", "images", name)
  File.open(filepath)
end

bb = Serie.create!(name: "Breaking Bad", photo: load_image("BreakingBad.jpg"))
crossed = Serie.create!(name: "Crossed", photo: load_image("Crossed.jpg"))
drWho = Serie.create!(name: "Doctor Who", photo: load_image("DoctorWho.jpg"))
got = Serie.create!(name: "Game Of Thrones", photo: load_image("GameOfThrones.jpg"))
theWire = Serie.create!(name: "The Wire", photo: load_image("TheWire.jpg"))

Season.create!(number: 01, serie: bb)
Season.create!(number: 02, serie: bb)
Season.create!(number: 03, serie: bb)
Season.create!(number: 04, serie: bb)

Season.create!(number: 01, serie: crossed)
Season.create!(number: 02, serie: crossed)
Season.create!(number: 03, serie: crossed)
