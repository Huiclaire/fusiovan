# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Build.destroy_all
User.destroy_all
Appliance.destroy_all
SolarPanel.destroy_all
Battery.destroy_all

# USERS:


  user1 = User.create!(email: "email1@email.com", password: "123456", reset_password_token: "reset token test 1", first_name: "Josh", last_name: "Howard", bio: "Am I supposed to write something here?")

  user2 = User.create!(email: "email2@email.com", password: "123456", reset_password_token: "reset token test 2", first_name: "Melissa", last_name: "Ugas", bio: "I like turtles.")

  user3 = User.create!(email: "user3@email.com", password: "123456", reset_password_token: "reset token test 3", first_name: "Jamie", last_name: "Guzman", bio: "I've decided to rent my personal camper van François, so that others can enjoy the beauty of nature and have a comfortable camping experience. I try to be a responsible steward of the land, air, water, and biodiversity. Realizing that we all have impacts when we visit natural areas and parks, I will donate 2% of proceeds to environmental causes, National Parks Foundations, and other friend group organizations. Please reach out with any questions!")

  user4 = User.create!(email: "user4@email.com", password: "123456", reset_password_token: "reset token test 4", first_name: "Patricio", last_name: "Henrickson", bio: "We love to camp, our camping love started with backpacking trips in college and as we had kids shifted to long car/RV camping trips with the kids. We have slowly introduced them to backpacking but our primary camping trips are 3-4 days in length. We transitioned from a pop-up trailer and now have a van that we rent out here on Vanish.")

  puts "created 4 users"

# APPLIANCES 1 of each

  # img_url (need to add in a migration)
  fridge1 = Appliance.create!(kind: "fridge", make: "Dometic", model: "CRX 50", voltage: 12, amps: 1, price: 599, product_url: "https://www.dometic.com/en-us/outdoor/food-and-beverage/refrigerators/camper-van-refrigerators/dometic-crx-50t-231419")

  puts "created 1 fridge"

  lights1 = Appliance.create!(kind: "lights", make: "Acegoo", model: "LED Puck Light 4 Pack", voltage: 12, amps: 1, price: 28, product_url: "https://acegoo.myshopify.com/products acegoo-rv-boat-led-recessed-ceiling-light-4-pieces-super-slim-full-aluminum-1")

  lights2 = Appliance.create!(kind: "lights", make: "Acegoo", model: "LED Puck Light 6 Pack", voltage: 12, amps: 1.5, price: 39, product_url: "https://acegoo.myshopify.com/products/12v-led-puck-light-rv-boat-overhead-recessed-mount-ceiling-light-12v-down-light-for-camper-vans-truck-motorhome-sailboat-interior-lighting-6-pack")

  puts "created 2 lights"

# SOLARPANELS

  solarpanel1 = SolarPanel.create!(kind: "Rigid", make: "Renogy", model: "RNG-100D-SS-US", voltage: 12, watts: 100, price: 99.99, product_url: "https://renogy.com/12v-100ah-smart-lithium-iron-phosphate-battery/")

    puts "created 1 solar panel"

# BATTERIES

  battery1 = Battery.create!(kind: "Lithium Iron Phosphate", make: "Renogy", model: "RBT100LFP12S-US", voltage: 12, amp_hours: 100, price: 722.49, product_url: "https://renogy.com/12v-100ah-smart-lithium-iron-phosphate-battery/")

  puts "created 1 battery"
