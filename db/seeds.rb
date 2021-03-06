# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts ''

puts 'Creating authors for test...'
Author.create! :name => "collins",  :bio => "Teste 1"
Author.create! :name => "Devin",  :bio => "Teste 2"
Author.create! :name => "Alvin Brain", :bio => "Teste 3"


puts 'Creating books for test...'
Book.create! :title => "Harry Potter", :author => "collins", :description => "Teste de description Harry Potter", :release => "2015-07-07", :language => "Portugues", :publishing_house => "Nova Terra"
Book.create! :title => "Capitain", :author => "Devin", :description => "Teste de description Capitain", :release => "2014-02-10", :language => "Portugues", :publishing_house => "Editora Lua"
Book.create! :title => "India", :author => "Alvin Brain", :description => "Teste de description India", :release => "2015-04-25", :language => "Ingles", :publishing_house => "Editora Bla"

puts 'Creating settings for test...'
Setting.create! :name => "Locateca", :title => "Locateca -  Gerenciamento de Biblioteca", :domain => "locateca.com.br", :url => "http://locateca.com.br", :email => "contato@locateca.com.br"
