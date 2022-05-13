# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Tournoi.destroy_all

user_admin = User.create!(
  nom: 'ADMIN',
  prenom: 'Charlotte',
  num_licence: 0,
  adult?: true,
  encadre?: true,
  email: 'test@test.com',
  password: '123456',
  password_confirmation: '123456',
  role: :admin
)

User.create!(
  nom: 'JOUEUR',
  prenom: 'Charlotte',
  num_licence: 1,
  adult?: true,
  encadre?: true,
  email: 'test@test.fr',
  password: '123456',
  password_confirmation: '123456'
)

Tournoi.create!(
  nom: 'Bacosun',
  ville: 'Oullins',
  date_tournoi: '11/06/2022',
  inscription_max: '11/06/2022',
  catégories: 'NC à D9'
)

Tournoi.create!(
  nom: 'Tournoi des Lumières',
  ville: 'Lyon',
  date_tournoi: '17/11/2022',
  inscription_max: '08/07/2022',
  catégories: 'NC à D9'
)
