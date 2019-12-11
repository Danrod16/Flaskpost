# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def clear_database
  puts "CLEARING DATABASE:"
  puts " "

  puts "Destroying Messages..."
  Message.destroy_all
  puts "#{Message.all.count} Messages."
  puts " "

  puts "Destroying Matches..."
  Match.destroy_all
  puts "#{Match.all.count} Matches."
  puts " "

  puts "Destroying Profiles..."
  Profile.destroy_all
  puts "#{Profile.all.count} Profiles."
  puts " "

  puts "Destroying Postings..."
  Posting.destroy_all
  puts "#{Posting.all.count} Postings."
  puts " "

  puts "Destroying Companies..."
  Company.destroy_all
  puts "#{Company.all.count} Companies."
  puts " "

  puts "Destroying Users..."
  User.destroy_all
  puts "#{User.all.count} Users."
  puts " "

  puts "DATABASE CLEARED."
  puts " "
end

clear_database

def seed_database
  puts "SEEDING DATABASE"
  puts " "

  puts "Seeding Users..."

end



