# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{name: 'admin', email: 'rrxadmin@uic.edu', password: 'admin1', password_confirmation: 'admin1'}])


rotations = Rotation.create([{name: 'Family Medicine'},
							 {name: 'Internal Medicine (Not UHATS)'},
							 {name: 'Obstetrics & Gynecology'},
							 {name: 'Pediatrics'}, 
							 {name: 'Psychiatry'}, 
							 {name: 'Surgery'}, 
							 {name: 'UHATS'}])