# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# system "say hi mom, look no console"
contact = Contact.new(
                        first_name: "Bob",
                        last_name: "Rooooooarman",
                        email: "carguy@yahoo.com",
                        phone_number: "3036780055"
                     )

contact.save