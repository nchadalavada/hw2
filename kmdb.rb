# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!
# see models

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# inserting movies into database
movie1 = Movie.new
movie1.name = "Batman Begins"
movie1.year_released = "2005"
movie1.rating = "PG-13"
movie1.save

movie2 = Movie.new
movie2.name = "The Dark Knight"
movie2.year_released = "2008"
movie2.rating = "PG-13"
movie2.save

movie3 = Movie.new
movie3.name = "The Dark Knight Rises"
movie3.year_released = "2012"
movie3.rating = "PG-13"
movie3.save


person1 = Person.new
person1.name = "Christopher Nolan"
person1.save

person2 = Person.new
person2.name = "Christian Bale"
person2.save

person3 = Person.new
person3.name = "Michael Caine"
person3.save

person4 = Person.new
person4.name = "Liam Neeson"
person4.save

person5 = Person.new
person5.name = "Katie Holmes"
person5.save

person6 = Person.new
person6.name = "Gary Oldman"
person6.save

person7 = Person.new
person7.name = "Heath Ledger"
person7.save

person8 = Person.new
person8.name = "Aaron Eckhart"
person8.save

person9 = Person.new
person9.name = "Maggie Gyllenhaal"
person9.save

person10 = Person.new
person10.name = "Tom Hardy"
person10.save

person11 = Person.new
person11.name = "Joseph Gordon-Levitt"
person11.save

person12 = Person.new
person12.name = "Anne Hathaway"
person12.save

role1 = Role.new
role1.character_name = "Bruce Wayne"
role1.save

role2 = Role.new
role2.character_name = "Alfred"
role2.save

role3 = Role.new
role3.character_name = "Ra's Al Ghul"
role3.save

role4 = Role.new
role4.character_name = "Rachel Dawes"
role4.save

role5 = Role.new
role5.character_name = "Commissioner Gordon"
role5.save

role6 = Role.new
role6.character_name = "Joker"
role6.save

role7 = Role.new
role7.character_name = "Harvey Dent"
role7.save

role8 = Role.new
role8.character_name = "Rachel Dawes"
role8.save

role9 = Role.new
role9.character_name = "Bane"
role9.save

role10 = Role.new
role10.character_name = "John Blake"
role10.save

role11 = Role.new
role11.character_name = "Selina Kyle"
role11.save




# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!
movies = Movie.all
for movie in movies
    puts "#{movie.name} #{movie.year_released} Christopher Nolan"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

movies = Movie.all
people = Person.all
roles = Role.all
for movie in movies
    puts movie.name
    for person in people
        puts person.name
        for role in roles
            puts role.character_name
end
end
end