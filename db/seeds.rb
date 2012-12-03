# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(first_name: 'svec', last_name: 'admin', password: 'pune007', password_confirmation: 'pune007', email: 'admin@svec.com')

user.update_attribute(:is_admin, true)
