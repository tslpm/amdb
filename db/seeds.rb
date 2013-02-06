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

movies = [
  { :title => "The Dark Knight", :year => 2008, :director_id => Director.find_by_name("Christopher Nolan").id },
  { :title => "The Godfather", :year => 1972, :director_id => Director.find_by_name("Francis Ford Coppola").id },
  { :title => "The Godfather: Part II", :year => 1974, :director_id => Director.find_by_name("Francis Ford Coppola").id },
  { :title => "The Shawshank Redemption", :year => 1994, :director_id => Director.find_by_name("Frank Darabont").id }
]

Movie.destroy_all
movies.each do |movie_hash|
  m = Movie.new
  m.title = movie_hash[:title]
  m.year = movie_hash[:year]
  m.director_id = movie_hash[:director_id]
  m.save
end
