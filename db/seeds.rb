# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# LKA seeds users
Mission.destroy_all
Expertise.destroy_all
User.destroy_all

tom = User.create!(first_name: "Tom", last_name: "Cruise", email: "tomcruise@gmail.com", password: "password", user_type:"expert")
lionel = User.create!(first_name: "Lionel", last_name: "Ktorza", email: "lka121@gamil.fr", password: "azeeeeuji", user_type:"expert")
kim = User.create!(first_name: "Kim", last_name: "Jong Un", email: "kimjongun@gmail.com", password: "password", user_type:"client")


# LKA seeds expertise
eva_expertise_A = Expertise.create!(
  category: "security",
  description: "10 years experience as a Security Officer",
  address: "Cannes",
  daily_rate: 700,
  user: tom,
  latitude: 7.017369,
  longitude: 43.552847)
eva_expertise_B = Expertise.create!(
  category: "cybersecurity",
  description: "hacker since 9 yo",
  address: "Marseille",
  daily_rate: 700,
  user: tom,
  latitude: 5.36978,
  longitude: 43.296482)
lka_expertise_A = Expertise.create!(
  category: "safety",
  description: "10 years as a fireman in BSPP",
  address: "Orléans",
  daily_rate: 500,
  user: tom,
  latitude: 1.909251,
  longitude: 47.902964)
lka_expertise_B = Expertise.create!(
  category: "systems",
  description: "2 years as a systems technician",
  address: "Paris",
  daily_rate: 500,
  user: tom,
  latitude: 2.3488,
  longitude: 48.8534)


# LKA seeds missions
mission_A1 = Mission.create!(user: kim, expertise: eva_expertise_A, price: 7000, starting_date: "01/07/2019", end_date: "14/07/2019", status: "pending")
mission_A2 = Mission.create!(user: kim, expertise: eva_expertise_B, price: 3000, starting_date: "15/08/2019", end_date: "02/09/2019", status: "accepted")
mission_B1 = Mission.create!(user: kim, expertise: lka_expertise_A, price: 1600, starting_date: "01/010/2019", end_date: "14/12/2019", status: "pending")
mission_B2 = Mission.create!(user: kim, expertise: lka_expertise_B, price: 30220, starting_date: "19/08/2019", end_date: "09/09/2019", status: "refused")
