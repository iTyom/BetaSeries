# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Episode.destroy_all
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

bb01 = Season.create!(number: 1, photo: load_image("BreakingBad01.jpg"), serie: bb)
bb02 = Season.create!(number: 2, photo: load_image("BreakingBad02.jpg"), serie: bb)
bb03 = Season.create!(number: 3, photo: load_image("BreakingBad03.jpg"), serie: bb)
bb04 = Season.create!(number: 4, photo: load_image("BreakingBad04.jpg"), serie: bb)

crossed01 = Season.create!(number: 1, photo: load_image("Crossed01.jpg"), serie: crossed)
crossed02 = Season.create!(number: 2, photo: load_image("Crossed02.jpg"), serie: crossed)
crossed03 = Season.create!(number: 3, photo: load_image("Crossed03.jpg"), serie: crossed)

Episode.create!(name: "Super Mario Bros", season: crossed01, number: 1, description: "Super Mario Bros décrypté par Karim Debbache", diffusion: "2016-05-02")
Episode.create!(name: "Gamer", season: crossed01, number: 2, description: "Gamer décrypté par Karim Debbache", diffusion: "2016-06-02")
Episode.create!(name: "Silent Hill", season: crossed01, number: 3, description: "Silent Hill décrypté par Karim Debbache", diffusion: "2016-07-02")
Episode.create!(name: "King of Kong", season: crossed01, number: 4, description: "King of Kong décrypté par Karim Debbache", diffusion: "2016-08-02")
Episode.create!(name: "House of the Dead", season: crossed01, number: 5, description: "House of the Dead décrypté par Karim Debbache", diffusion: "2016-09-02")
Episode.create!(name: "Starfighter", season: crossed01, number: 6, description: "Starfighter décrypté par Karim Debbache", diffusion: "2016-10-02")
Episode.create!(name: "Max Payne", season: crossed01, number: 7, description: "Max Payne décrypté par Karim Debbache", diffusion: "2016-11-02")

Episode.create!(name: "Pilot", season: bb01, number: 1, description: "Walter White commence à produire de la methamphetamine pour subvenir aux besoins de sa famille le jour où il découvre qu'il a un cancer des poumons. Il se met en équipe avec un de ses anciens étudiant, Jesse Pinkman, qui est dealer de meth.", diffusion: "2008-01-20")
Episode.create!(name: "Cat's in the Bag...", season: bb01, number: 2, description: "Walter et Jesse doivent gérer les deux corps qui se trouvent dans le camping-car. De plus Skyler s'inquiète du comportement de Walter.", diffusion: "2008-01-27")
Episode.create!(name: "...And the Bag's in the River", season: bb01, number: 3, description: "Walter n'arrive pas a se décider s'il doit tuer ou non Krazy-8. Pendant ce temps, Marie pense que Walter Jr. fume de la marijuana et demande à Hank de le décourager à se droguer.", diffusion: "2008-02-10")
Episode.create!(name: "Cancer Man", season: bb01, number: 4, description: "La brigade des stups est de plus en plus suspicieuse sur la présense d'un nouveau roi de la drogue à Albuquerque. Walt révèle à Marie et Hank qu'il a un cancer. Pendant ce temps Jesse visite sa famille devenue si étrangère.", diffusion: "2008-02-17")
Episode.create!(name: "Gray Matter", season: bb01, number: 5, description: "Un ancien ami de Walter lui propose un travail lucratif lui permettant de couvrir ses frais de traitement. Jesse essaie de produire de la meth lui-même.", diffusion: "2008-02-24")
Episode.create!(name: "Crazy Handful of Nothin'", season: bb01, number: 6, description: "Walter recommence à produire de la meth. Le beau frère de Walter le questionne à propos du vol commis à l'école. Walter et Jesse essaient de trouver un nouveau réseau de distribution.", diffusion: "2008-03-02")
Episode.create!(name: "A No-Rough-Stuff-Type Deal", season: bb01, number: 7, description: "Walter et Jesse ont des problèmes pour produire la grande quantité de meth promise à Tuco. Skyler met Marie dos au mur concernant sa kleptomanie.", diffusion: "2008-03-10")
Episode.create!(name: "Good Cop Bad Cop", season: bb01, number: 8, description: "Hank and Marie try to spice up their relationship on Valentine's Day.", diffusion: "2008-02-18")
Episode.create!(name: "Wedding Day", season: bb01, number: 9, description: "Walt and Hank have a talk before Hank gets married.", diffusion: "2008-02-18")
Episode.create!(name: "TwaughtHammer", season: bb01, number: 10, description: "Jesse and Badger make a behind the scenes video about their band \"TwaughtHammer\" and show a music video for their song \"Fallacies.\"", diffusion: "2008-02-18")
Episode.create!(name: "Marie's Confession", season: bb01, number: 11, description: "Marie records a video diary.", diffusion: "2008-02-18")
Episode.create!(name: "The Break-In", season: bb01, number: 12, description: "Walt and Badger attempt to retrieve a vacuum cleaner stuffed with drug money from an elderly woman's locked garage.", diffusion: "2008-02-25")

Episode.create!(name: "Seven Thirty-Seven", season: bb02, number: 1, description: "Le business de Walt et Jesse avec Tuco dérape quand ce dernier tue son associé devant leurs yeux. Paranoïaques, les deux hommes sont persuadés qu'ils sont les prochains sur la liste.", diffusion: "2009-03-08")
Episode.create!(name: "Grilled", season: bb02, number: 2, description: "Hank, le beau frère de Walter, décide de mettre tout en oeuvre pour le retrouver. Toute la famille de Walter est inquiète de sa disparition.", diffusion: "2009-03-15")
Episode.create!(name: "Bit by a Dead Bee", season: bb02, number: 3, description: "Après avoir échappé à leur kidnappeur, Jesse et Walter se séparent sur la route. Walter se rend dans un supermarché où, pris d'une crise de démence, il se déshabille devant l'ensemble des clients.", diffusion: "2009-03-22")
Episode.create!(name: "Down", season: bb02, number: 4, description: "Malgré les tentatives de Walt pour renouer avec sa famille, Skyler toujours très suspicieuse le garde à distance et s'inquiête sur ce qu'il a pu faire lorsqu'il n'était pas à la maison; ", diffusion: "2009-03-29")
Episode.create!(name: "Breakage", season: bb02, number: 5, description: "Hank souffre de sa rencontre avec Tuco. Jesse, quant à lui, forme une équipe pour vendre en dehors de leur territoire conformément aux souhaits de Walter.", diffusion: "2009-04-05")
Episode.create!(name: "Peekaboo", season: bb02, number: 6, description: "Le secret de Walt est en danger quand Skyler remercie Gretchen pour avoir payé son traitement. Walt se doit de trouver un nouveau mensonge pour se couvrir.", diffusion: "2009-04-12")
Episode.create!(name: "Negro y Azul", season: bb02, number: 7, description: "Jesse et Walt se demandent si ils peuvent étendre leur territoire pendant que Skyler cherche un nouveau job.", diffusion: "2009-04-19")
Episode.create!(name: "Better Call Saul", season: bb02, number: 8, description: "Walt et Jesse vont chercher des conseils chez un avocat peu scrupuleux quand Badger se fait arrêter par la police. La DEA croit s'être approchée de Heisenberg.", diffusion: "2009-04-26")
Episode.create!(name: "4 Days Out", season: bb02, number: 9, description: "Walt est convaincu que son état de santé se détériore. Il continue d'avoir des quintes de toux et crache maintenant du sang. Il se rend compte qu'il n'y a pas beaucoup d'argent à gauche pour sa famille.", diffusion: "2009-05-03")
Episode.create!(name: "Over", season: bb02, number: 10, description: "Walt et Hank se confrontent lors d'une fête. Jane cache sa relation avec Jesse à son père.", diffusion: "2009-05-10")
Episode.create!(name: "Mandala", season: bb02, number: 11, description: "Saul propose un accord à Walt et Jesse tandis que ce dernier parle franchement à Jane.", diffusion: "2009-05-17")
Episode.create!(name: "Phoenix", season: bb02, number: 12, description: "La famille White arrive à un nouveau point. L'addiction de Jesse commence à devenir hors de contrôle et sa relation avec Jane cause quelques problèmes avec Walt comme avec Donald.", diffusion: "2009-05-24")
Episode.create!(name: "ABQ", season: bb02, number: 13, description: "La famille White arrive à un nouveau point. L'addiction de Jesse commence à devenir hors de contrôle et sa relation avec Jane cause quelques problèmes avec Walt comme avec Donald.", diffusion: "2009-05-31")
