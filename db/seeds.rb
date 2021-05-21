# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sykes_mt = Trail.create(name: "Moon Tower", location: "Sykes Park")
southside_grn = Trail.create(name: "Green Trail", location: "Southside Park")
sope = Trail.create(name: "Sope Creek", location: "Sope Creek")

log_at_sykes = Valet.create(location: "Mile marker 1", trail_id: sykes_mt.id, issue: "Log on trail")
mud_ss = Valet.create(location: "Mile marker 3", trail_id: southside_grn.id, issue: "Holding water")
trash_sope = Valet.create(location: "At 2nd creek crossing CCW", trail_id: sope.id, issue: "Trash pick up day needed")


