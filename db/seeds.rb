# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.create(first_name: "Ilias", last_name: "Tsangaris", email: "i@tsangaris.com", password_digest: "password", join_date: "January 1, 2013")

User.create(first_name: "Scarlett", last_name: "Stack", email: "s@stack.com", password_digest: "password", join_date: "January 2, 2013")
