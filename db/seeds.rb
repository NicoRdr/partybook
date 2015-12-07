# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email

########### Soirées ###############

Soiree.create( nom: 'Mousse',
              date: Date.new(2015, 12, 10),
              description: 'Soirée mousse, apportez vos maillots de bain et serviettes !',
              place: 50,
              prix: 10,
              lieux: 'Paris',
              type_of: 'DanceFloor')

@annee = Soiree.create( nom: 'Année 80',
              date: Date.new(2015, 12, 02),
              description: 'Revivez les années 80 sans la coupe de cheveux !',
              place: 80,
              prix: 80,
              lieux: 'Chartres',
              type_of: 'Retro' )

Soiree.create( nom: 'Jour de l\'an',
              date: Date.new(2015, 12, 31),
              description: 'Fetez la nouvelle année avec la Companie Créole et Kassav',
              place: 100,
              prix: 50,
              lieux: 'La Loupe',
              type_of: 'Déguisée' )

Soiree.create( nom: 'Electro',
              date: Date.new(2016, 06, 01),
              description: 'Soirée remix music...',
              place: 200,
              prix: 30,
              lieux: 'Roubaix',
              type_of: 'Beuverie' )

########### Utilisateurs ###############

@cyrille = User.create(nom: 'Grosse',
              email: 'cyrille@email.com',
              prenom: 'Cyrille',
              password: 'aaaaaaaa',
              soiree_id: @annee.id )
              
@ludivine = User.create(nom: 'Coppel',
              email: 'ludivine@email.com',
              prenom: 'Ludivine',
              password: 'aaaaaaaa' )

@simon = User.create(nom: 'Danger',
              email: 'Simon@email.com',
              prenom: 'Simon',
              password: 'aaaaaaaa' )

@coralie = User.create(nom: 'Sylvestre',
              email: 'coralie@email.com',
              prenom: 'Coralie',
              password: 'aaaaaaaa' )

@thierry = User.create(nom: 'Damey',
              email: 'thierry@email.com',
              prenom: 'Thierry',
              password: 'aaaaaaaa' )

@alexandra = User.create(nom: 'Duval',
              email: 'alexandra@email.com',
              prenom: 'Alexandra',
              password: 'aaaaaaaa' )

@julien = User.create(nom: 'Ente',
              email: 'julien@email.com',
              prenom: 'Julien',
              organisateur: true,
              password: 'aaaaaaaa' )
              
@ludivine = User.create(nom: 'Nadalini',
              email: 'ludivine@email.com',
              prenom: 'Ludivine',
              organisateur: true,
              password: 'aaaaaaaa' )

@celine = User.create(nom: 'Daffe',
              email: 'celine@email.com',
              prenom: 'Céline',
              organisateur: true,
              password: 'aaaaaaaa' )

@alex = User.create(nom: 'Bodier',
              email: 'alex@email.com',
              prenom: 'Alex',
              organisateur: true,
              password: 'aaaaaaaa' )





