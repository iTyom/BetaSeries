# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def load_image(name)
  filepath = Rails.root.join("db", "images", name)
  File.open(filepath)
end

Serie.create!(name: "Breaking Bad", photo: load_image("BreakingBad.jpg"))
Serie.create!(name: "Crossed", photo: load_image("Crossed.jpg"))
Serie.create!(name: "Doctor Who", photo: load_image("DoctorWho.jpg"))
Serie.create!(name: "Game Of Thrones", photo: load_image("GameOfThrones.jpg"))
Serie.create!(name: "The Wire", photo: load_image("TheWire.jpg"))
