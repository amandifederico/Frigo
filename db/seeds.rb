# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#user = User.new
#user.email = "usuario@index.com"
#user.password = "quitar1234"
#user.save!
#user.add_role "admin"

#user = User.new
#user.email = "usuarioa@index.com"
#user.password = "usuarioa"
#user.save!
#user.add_role "A"

#user = User.new
#user.email = "usuariob@index.com"
#user.password = "usuariob"
#user.save!
#user.add_role "B"

#user = User.new
#user.email = "usuarioc@index.com"
#user.password = "usuarioc"
#user.save!
#user.add_role "C"


turno = Turn.new(date:'27-03-2016')
turno.save

ciudad = City.new(name:"Rawson", province:"Chubut", cp:"9103")
ciudad.save

productor = Producer.new(name:"Emmanuel Dominguez", up_date:"20-02-2016", down_date:"", city:ciudad, observation:"Un Crack") 
productor.save


animal_types_list = [
				['Bovino'],
				['Ovino'],
				['Porcino']
]
animal_types_list.each do | description|
	AnimalType.find_or_create_by(description:description)
end

animals_list = [
				['Toro',1,465],
				['Vaca',1,465],
				['Vaquillona',1,465],
				['Ternero',1,465],
				['Ternera',1,465],
				['Novillo',1,465]
]
animals_list.each do |description, animal_type_id, average_value|
	Animal.find_or_create_by(description:description, animal_type_id:animal_type_id, average_value:average_value)
end

