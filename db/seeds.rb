# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Platform.create([{ name: 'Machintos' }, { name: 'PC' }, { name: 'Virtual Machine' }, { name: 'Linux' } ])

 System.create([{ name: 'MacOS' }, { name: 'Windows' }, { name: 'Linux' }, { name: 'IOS' }, { name: 'Android' } ])

 Browser.create([{ name: 'Chrome' }, { name: 'Safari' }, { name: 'Opera' }, { name: 'Firefox' },{ name: 'Explorer' }, { name: 'Otros' } ])
 
 Severity.create([{ title: 'Major' }, { title: 'Medium' }, { title: 'Minor' } ])

 Priority.create([{ title: 'High' }, { title: 'Medium' }, { title: 'Low' }])

 Status.create([{ title: 'Pending' }, { title: 'Progress' }, { title: 'Done' }])
