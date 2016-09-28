# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Area.create!(nombre: "Corporal",cantidad: 17)
Area.create!(nombre: "Afectiva",cantidad: 17)
Area.create!(nombre: "Social",cantidad: 17)
Area.create!(nombre: "Espiritual",cantidad: 17)
Area.create!(nombre: "Creativa",cantidad: 17)
Area.create!(nombre: "Caracter",cantidad: 17)

Clasificacion.create!(nombre: "Infancia Media")
Clasificacion.create!(nombre: "Infancia Tardia")

Objetivo.create!(texto: "Objetivo1",nombre:"Objetivo1", clasificacion_id: 1 ,area_id: 1)
Objetivo.create!(texto: "Objetivo2",nombre:"Objetivo1", clasificacion_id: 1 ,area_id: 2)
Objetivo.create!(texto: "Objetivo3",nombre:"Objetivo1", clasificacion_id: 1 ,area_id: 3)
Objetivo.create!(texto: "Objetivo4",nombre:"Objetivo1", clasificacion_id: 2 ,area_id: 4)
Objetivo.create!(texto: "Objetivo5",nombre:"Objetivo1", clasificacion_id: 2 ,area_id: 5)
Objetivo.create!(texto: "Objetivo6",nombre:"Objetivo1", clasificacion_id: 2 ,area_id: 6)


Estado.create!(nombre: "No seleccionado")
Estado.create!(nombre: "Seleccionado")
Estado.create!(nombre: "Completado")


Historial.create!(usuario_id:1, beneficiario_id:1, estado_id:1, objetivos_id:1)
Historial.create!(usuario_id:1, beneficiario_id:1, estado_id:1, objetivos_id:1)
Historial.create!(usuario_id:1, beneficiario_id:1, estado_id:1, objetivos_id:1)
Historial.create!(usuario_id:1, beneficiario_id:1, estado_id:1, objetivos_id:1)
Historial.create!(usuario_id:1, beneficiario_id:1, estado_id:1, objetivos_id:1)
Historial.create!(usuario_id:1, beneficiario_id:1, estado_id:1, objetivos_id:1)