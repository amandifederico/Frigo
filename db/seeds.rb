# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.new
user.email = "usuario@index.com"
user.password = "quitar1234"
user.save!
user.add_role "admin"

user = User.new
user.email = "usuarioa@index.com"
user.password = "usuarioa"
user.save!
user.add_role "A"

user = User.new
user.email = "usuariob@index.com"
user.password = "usuariob"
user.save!
user.add_role "B"

user = User.new
user.email = "usuarioc@index.com"
user.password = "usuarioc"
user.save!
user.add_role "C"


turno = Turn.new(date:'27-03-2016')
turno.save

ciudad = City.new(name:"Rawson", province:"Chubut", cp:"9103")
ciudad.save

ciudad2 = City.new(name:"Esquel", province:"Chubut", cp:"9200")
ciudad2.save

productor = Producer.new(name:"Emmanuel Dominguez", up_date:"20-02-2016", down_date:"", city:ciudad, observation:"Un Crack") 
productor.save

productor = Producer.new(name:"Axel Ginzery", up_date:"20-02-2016", down_date:"", city:ciudad2, observation:"El Nuevo Licenciado") 
productor.save

transport = Transport.new(coupled:4433, capacity:30, plate:"jkl678", model:2003, weight:100)
transport.save

range_troop_numer = RangeTroopNumber.new(min:150, max:250)
range_troop_numer.save


animal_types_list = [
				['Bovino'],
				['Ovino'],
				['Porcino']
]
animal_types_list.each do |description|
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

sub_product_types_list = [
					['mondongo'],
					['chinchulines'],
					['corazón'],
					['lengua'],
					['sesos'],
					['cuero']
]
sub_product_types_list.each do |description|
	SubProductType.find_or_create_by(description:description)
end

places_list = [
			['corral1A'],
			['corral1B'],
			['corral2A'],
			['corral2B'],
]

places_list.each do |description|
	Place.find_or_create_by(description:description)
end


#---- Creando Posiciones
positions_list = [
	['Corralero','Trabaja en los corrales'],
	['Sereno','Cuida la planta'],
	['Administrativo','Papeleo']
]
positions_list.each do |name, description|
	Position.find_or_create_by(name: name, description: description)
end

#---- Creando Agentes
agents_list = [
	['Amandi', 'Federico', 31636675, 1, '01-10-2017'],
	['Geoffroy', 'Silvio', 31923381, 2, '01-08-2017']
]

agents_list.each do |last_name, name, dni, position_id, up_date|
	Agent.find_or_create_by(last_name: last_name, name: name, dni:dni, position_id: position_id, up_date:up_date)
end

#---- Creando un Turno
turno = Turn.new(date:'27-03-2016')
turno.save

#---- Creando Detalles de Turno
turn_details_list = [
	[1, 1, 1, 'Detalle 1'],
	[2, 2, 2, 'Detalle 2']
]

turn_details_list.each do |turn_id, agent_id, place_id, observation|
	TurnDetail.find_or_create_by(turn_id:turn_id, agent_id:agent_id, place_id:place_id, observation:observation)
end
