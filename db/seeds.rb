# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(name:'Web Music', description:'Streaming Music')
Project.create(name:'Pictures', description:'Whatch pictures')
Project.create(name:'Movies', description:'Whatch movies')
Project.create(name:'Video Games', description:'Play VideoGames')
Entry.create(project_id: 1, hours:11, minutes: 33)
Entry.create(project_id: 1, hours:6, minutes: 22)
Entry.create(project_id: 2, hours:1, minutes: 33)
Entry.create(project_id: 2, hours:11, minutes: 44)
Entry.create(project_id: 3, hours:7, minutes: 33)
Entry.create(project_id: 4, hours:111, minutes: 11)
Entry.create(project_id: 4, hours:12, minutes: 44)
Entry.create(project_id: 4, hours:33, minutes: 33)


