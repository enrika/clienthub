# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
  {
    name: "Enrika Greathouse",
    admin: true
  },
  {
    name: "Results Fitness",
    image: "profile_user.jpg"
  },
  {
    name: "Vibe PA",
    image: "profile_user.jpg"
    
  },
  {
    name: "Goodwill",
    image: "profile_user.jpg"
  }
])
