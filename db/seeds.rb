# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Appointment.destroy_all
Patient.destroy_all
Specialty.destroy_all
Specialisation.destroy_all
City.destroy_all

25.times do
  c = City.create(name: Faker::Nation.capital_city)

  d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: c)
  
  p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: c)

  Appointment.create(doctor: d, patient: p, date: Faker::Date.forward(days: 23), city: c)
  
  spe = Specialty.create(name: Faker::Job.title)
  
  Specialisation.create(doctor: d, specialty: spe)
end
