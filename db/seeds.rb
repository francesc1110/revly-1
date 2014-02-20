# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Tile.delete_all

ilias = User.create(first_name: "Ilias", last_name: "T", email: "i@t.com", password: "puppies", password_confirmation: "puppies")

ilias.tiles.create(message: "Hello world.", track_id: "111382476")
