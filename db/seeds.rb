# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

scientist1 = Scientist.create(name: "Daniela", age: "24", bio: "i actually like cats", username: "daniela", password: "cats123")
scientist2 = Scientist.create(name: "Joe", age: "33", bio: "i love birds, but dont wanna live with them", username: "joe", password: "birds123")

colony1 = Colony.create(name: "Penguin Colony")
colony2 = Colony.create(name: "Deli Colony")

penguin1 = Penguin.create(name: "Terminator", title: "general", temp: "nice", alive: true, species: "emperor penguin", colony_id: colony1.id)
penguin1 = Penguin.create(name: "Hulk Hogan", title: "lord", temp: "evil", alive: true, species: "deli penguin", colony_id: colony2.id)

record_daniela = Record.create(scientist_id: scientist1.id, colony_id: colony1.id, location: "backyard", project_name: "Daniela' Birds")
record_joe = Record.create(scientist_id: scientist2.id, colony_id: colony2.id, location: "refridgerator", project_name: "Science Experiments")
