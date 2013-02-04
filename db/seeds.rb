# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

directors = [
  { :name => "Christopher Nolan", :dob => Date.parse("30/07/1970") },
  { :name => "Francis Ford Coppola", :dob => Date.parse("07/04/1939") },
  { :name => "Frank Darabont", :dob => Date.parse("29/01/1959") }
]

Director.destroy_all
directors.each do |director_hash|
  d = Director.new
  d.name = director_hash[:name]
  d.dob = director_hash[:dob]
  d.save
end
