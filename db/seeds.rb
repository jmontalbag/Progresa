# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Estado.create!(nombre: "no seleccionado")
Estado.create!(nombre: "seleccionado")
Estado.create!(nombre: "completado")


Area.create!(nombre: "Corporal",cantidad: 17)
Area.create!(nombre: "Afectiva",cantidad: 17)
Area.create!(nombre: "Social",cantidad: 17)
Area.create!(nombre: "Espiritual",cantidad: 17)
Area.create!(nombre: "Creativa",cantidad: 17)
Area.create!(nombre: "Caracter",cantidad: 17)