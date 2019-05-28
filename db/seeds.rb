# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# LKA seeds users
EVA = User.new(first_name: "Eddy", last_name: "Vella", email: "evella@gamil.fr", password: "arty", type:"expert")
LKA = User.new(first_name: "Lionel", last_name: "Ktorza", email: "lka@gamil.fr", password: "azeuji", type:"expert")
FMY = User.new(first_name: "Eddy", last_name: "Vella", email: "evella@gamil.fr", password: "olk", type:"client")
FSD = User.new(first_name: "Flavie", last_name: "Sicard", email: "fsicard@gamil.fr", password: "ghhh", type:"client")

# LKA seeds expertise
eva_expertise_A = Expertise.new(category: "security", description: "10 years experience as a Security Officer", address: "Marseille", daily_rate: 700, user_id: 1)
eva_expertise_B = Expertise.new(category: "cybersecurity", description: "hacker since 9 yo", address: "Marseille", daily_rate: 700, user_id: 1)
lka_expertise_A = Expertise.new(category: "safety", description: "10 years as a fireman in BSPP", address: "Paris", daily_rate: 500, user_id: 2)
lka_expertise_A = Expertise.new(category: "security", description: "2 years as a Security Officer", address: "Paris", daily_rate: 500, user_id: 2)


# LKA seeds missions
mission_A1 = Mission.new(user_id: 3, expertise_id: 1, price: 7000, starting_date: 01/07/2019, end_date: 14/07/2019, status: "pending")
mission_A2 = Mission.new(user_id: 3, expertise_id: 4, price: 3000, starting_date: 15/08/2019, end_date: 02/09/2019, status: "accepted")
mission_B1 = Mission.new(user_id: 4, expertise_id: 1, price: 1600, starting_date: 01/010/2019, end_date: 14/12/2019, status: "pending")
mission_B2 = Mission.new(user_id: 4, expertise_id: 4, price: 30220, starting_date: 19/08/2019, end_date: 09/09/2019, status: "refused")
