# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all

10.times do
    City.create(name: Faker::Address.city)
    end

    10.times do
        Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
        end

Specialty.create(name: "Pediatrics")
Specialty.create(name: "Cardiology")
Specialty.create(name: "Dentistry")
Specialty.create(name: "Neurology")
Specialty.create(name: "Oncology")
Specialty.create(name: "Radiology")

    10.times do
        Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
        end

    10.times do
        Appointment.create(date: Faker::Date.forward(days: 30), doctor_id: rand(1..10), patient_id: rand(1..10))
        end

    10.times do
        DoctorSpecialty.create(doctor_id: rand(1..10), specialty_id: rand(1..6))
        end
        