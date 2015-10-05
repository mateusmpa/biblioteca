# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Creating books for test...'
Book.create! :title => "Harry Potter", :author => "collins", :description => "Teste de description Harry Potter", :release => 10102010, :language => "Portugues", :publishing_house => "Nova Terra"
Book.create! :title => "Capitain", :author => "Devin", :description => "Teste de description Capitain", :release => 10112010, :language => "Portugues", :publishing_house => "Editora Lua"
Book.create! :title => "India", :author => "Alvin Brain", :description => "Teste de description India", :release => 20102010, :language => "Ingles", :publishing_house => "Editora Bla"
