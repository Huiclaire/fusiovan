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
BuildAppliance.destroy_all

# USERS:


  user1 = User.create!(email: "email1@email.com", password: "123456", reset_password_token: "reset token test 1", first_name: "Josh", last_name: "Howard", bio: "Am I supposed to write something here?")

  user2 = User.create!(email: "email2@email.com", password: "123456", reset_password_token: "reset token test 2", first_name: "Melissa", last_name: "Ugas", bio: "I like turtles.")

  user3 = User.create!(email: "user3@email.com", password: "123456", reset_password_token: "reset token test 3", first_name: "Jamie", last_name: "Guzman", bio: "I've decided to rent my personal camper van François, so that others can enjoy the beauty of nature and have a comfortable camping experience. I try to be a responsible steward of the land, air, water, and biodiversity. Realizing that we all have impacts when we visit natural areas and parks, I will donate 2% of proceeds to environmental causes, National Parks Foundations, and other friend group organizations. Please reach out with any questions!")

  user4 = User.create!(email: "user4@email.com", password: "123456", reset_password_token: "reset token test 4", first_name: "Patricio", last_name: "Henrickson", bio: "We love to camp, our camping love started with backpacking trips in college and as we had kids shifted to long car/RV camping trips with the kids. We have slowly introduced them to backpacking but our primary camping trips are 3-4 days in length. We transitioned from a pop-up trailer and now have a van that we rent out here on Vanish.")

  puts "created 4 users"

# APPLIANCES

  # img_url (need to add in a migration)
  # FRIDGES
    crx50 = Appliance.create!(kind: "fridge", make: "Dometic", model: "CRX 50", voltage: 12, amps: 1, price: 599, product_url: "https://www.dometic.com/en-us/outdoor/food-and-beverage/refrigerators/camper-van-refrigerators/dometic-crx-50t-231419")

    crx65 = Appliance.create!(kind: "fridge", make: "Dometic", model: "CRX 65", voltage: 12, amps: 1.25, price: 629, product_url: "https://www.dometic.com/en-us/outdoor/food-and-beverage/refrigerators/mini-fridges/dometic-crx-65t-231420")

    crx140s = Appliance.create!(kind: "fridge", make: "Dometic", model: "CRX 140s", voltage: 12, amps: 2.2, price: 1820, product_url: "https://www.dometic.com/en-us/outdoor/food-and-beverage/refrigerators/rv-refrigerators/dometic-crx-140s-136705")

    puts "created 3 fridges"

  # LIGHTS

    led4pack = Appliance.create!(kind: "lights", make: "Acegoo", model: "LED Puck Light 4 Pack", voltage: 12, amps: 1, price: 28, product_url: "https://acegoo.myshopify.com/products acegoo-rv-boat-led-recessed-ceiling-light-4-pieces-super-slim-full-aluminum-1")

    led6pack = Appliance.create!(kind: "lights", make: "Acegoo", model: "LED Puck Light 6 Pack", voltage: 12, amps: 1.5, price: 39, product_url: "https://acegoo.myshopify.com/products/12v-led-puck-light-rv-boat-overhead-recessed-mount-ceiling-light-12v-down-light-for-camper-vans-truck-motorhome-sailboat-interior-lighting-6-pack")

    led8pack = Appliance.create!(kind: "lights", make: "Acegoo", model: "LED Puck Light 8 Pack", voltage: 12, amps: 2, price: 56, product_url: "https://acegoo.myshopify.com/products acegoo-rv-boat-led-recessed-ceiling-light-4-pieces-super-slim-full-aluminum-1")

    puts "created 3 lights"

  # FANS

    fantasticfan = Appliance.create!(kind: "fan", make: "Dometic", model: "Fantastic Fan", voltage: 12, amps: 1.2, price: 282, product_url: "https://www.dometic.com/en-us/outdoor/climate-and-comfort/ventilation-solutions/rv-roof-vents/dometic-fantastic-vent-3350-21213")

    maxxfan = Appliance.create!(kind: "fan", make: "Maxxair", model: "Maxxfan", voltage: 12, amps: 0.5, price: 256, product_url: "https://www.airxcel.com/rv/maxxair/products/fans/maxxfan")

    maxxfandeluxe = Appliance.create!(kind: "fan", make: "Maxxair", model: "Maxxfan Deluxe", voltage: 12, amps: 0.6, price: 338, product_url: "https://www.airxcel.com/rv/maxxair/products/fans/maxxfan-deluxe")

    puts "created 3 fans"

# SOLARPANELS

  rigidpanel100 = SolarPanel.create!(kind: "Rigid", make: "Renogy", model: "Rigid Monocrystalline Panel", voltage: 12, watts: 100, price: 119.99, product_url: "https://renogy.com/renogy-100-watt-12-volt-monocrystalline-solar-panel/")
  rigidpanel200 = SolarPanel.create!(kind: "Rigid", make: "Renogy", model: "Rigid Monocrystalline Panel", voltage: 12, watts: 200, price: 279.99, product_url: "https://renogy.com/200-watt-12-volt-monocrystalline-solar-panel/")
  flexpanel170 = SolarPanel.create!(kind: "Rigid", make: "Renogy", model: "Flexible Monocrystalline Panel", voltage: 12, watts: 170, price: 280.49, product_url: "https://renogy.com/175-watt-12-volt-flexible-monocrystalline-solar-panel/")

    puts "created 3 solar panels"

# BATTERIES

  agm100 = Battery.create!(kind: "AGM", make: "Renogy", model: "AGM Deep Cycle Battery", voltage: 12, amp_hours: 100, price: 269.99, product_url: "https://renogy.com/deep-cycle-agm-battery-12-volt-100ah/")

  agm200 = Battery.create!(kind: "AGM", make: "Renogy", model: "AGM Deep Cycle Battery", voltage: 12, amp_hours: 200, price: 395.99, product_url: "https://renogy.com/deep-cycle-agm-battery-12-volt-200ah/")

  lithium170 = Battery.create!(kind: "Lithium Iron Phosphate", make: "Renogy", model: "Lithium-Iron Deep Cycle Battery", voltage: 12, amp_hours: 170, price: 1279.99, product_url: "https://renogy.com/lithium-iron-phosphate-battery-12-volt-170ah/")

  puts "created 3 batteries"

# BUILDS
  # low budget user 1
    build1 = Build.create!(name: 'small budget', solar_panel: rigidpanel100, battery: agm100, user: user1)
    crx50_build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 12, build: build1, appliance: crx50
    )
    led4pack_build = BuildAppliance.create!(
      use_hours: 3, amp_hours: 3, build: build1, appliance: led4pack
    )
    build1.update(total_price: build1.set_total_price)

  # medium budget user 1
    build2 = Build.create!(name: 'medium budget', solar_panel: rigidpanel200, battery: agm200, user: user1)

    crx65_build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 15, build: build2, appliance: crx65
    )

    led6pack_build = BuildAppliance.create!(
      use_hours: 3, amp_hours: 4.5, build: build2, appliance: led6pack
    )

    maxxfan_build = BuildAppliance.create!(
      use_hours: 8, amp_hours: 4, build: build2, appliance: maxxfan
    )

    build2.update(total_price: build2.set_total_price)
  # big budget user 1
    build3 = Build.create!(name: 'Sprinter Deluxe', solar_panel: rigidpanel200, battery: lithium170, user: user1)

    crx140s_build = BuildAppliance.create!(
      use_hours: 18, amp_hours: 40, build: build3, appliance: crx140s
    )

    led8pack_build = BuildAppliance.create!(
      use_hours: 3, amp_hours: 6, build: build3, appliance: led8pack
    )

    maxxfandeluxe_build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 7, build: build3, appliance: maxxfandeluxe
    )

    build3.update(total_price: build3.set_total_price)


  # low budget user 2

      build4 = Build.create!(name: 'First build!', solar_panel: flexpanel170, battery: agm100, user: user2)

      crx50_build = BuildAppliance.create!(
        use_hours: 14, amp_hours: 14, build: build4, appliance: crx50
      )
      led6pack_build = BuildAppliance.create!(
        use_hours: 3, amp_hours: 3, build: build4, appliance: led6pack
      )
      build4.update(total_price: build4.set_total_price)

  # medium budget user 2
      build5 = Build.create!(name: 'Snow', solar_panel: rigidpanel200, battery: agm200, user: user2)

      crx65_build = BuildAppliance.create!(
        use_hours: 12, amp_hours: 15, build: build5, appliance: crx65
      )

      led6pack_build = BuildAppliance.create!(
        use_hours: 3, amp_hours: 4.5, build: build5, appliance: led6pack
      )

      maxxfan_build = BuildAppliance.create!(
        use_hours: 8, amp_hours: 4, build: build5, appliance: maxxfan
      )

      build5.update(total_price: build5.set_total_price)

  # big budget user 2
      build6 = Build.create!(name: 'Vanagon', solar_panel: rigidpanel200, battery: agm200, user: user2)

      crx65_build = BuildAppliance.create!(
        use_hours: 18, amp_hours: 36, build: build6, appliance: crx65
      )

      led8pack_build = BuildAppliance.create!(
        use_hours: 3, amp_hours: 8, build: build6, appliance: led8pack
      )

      maxxfandeluxe_build = BuildAppliance.create!(
        use_hours: 12, amp_hours: 4, build: build6, appliance: maxxfandeluxe
      )

      build6.update(total_price: build6.set_total_price)

  # low budget user 3

      build7 = Build.create!(name: 'Sheeba', solar_panel: flexpanel170, battery: agm100, user: user3)

      crx50_build = BuildAppliance.create!(
        use_hours: 14, amp_hours: 10, build: build7, appliance: crx50
      )
      led6pack_build = BuildAppliance.create!(
        use_hours: 3, amp_hours: 3, build: build7, appliance: led6pack
      )
      build7.update(total_price: build7.set_total_price)

  # medium budget user 3
      build8 = Build.create!(name: 'Westy', solar_panel: rigidpanel200, battery: agm200, user: user3)

      crx65_build = BuildAppliance.create!(
        use_hours: 12, amp_hours: 15, build: build8, appliance: crx65
      )

      led6pack_build = BuildAppliance.create!(
        use_hours: 3, amp_hours: 4.5, build: build8, appliance: led6pack
      )

      maxxfan_build = BuildAppliance.create!(
        use_hours: 8, amp_hours: 4, build: build8, appliance: maxxfan
      )

      build8.update(total_price: build8.set_total_price)

  # big budget user 3
        build9 = Build.create!(name: 'Amine', solar_panel: rigidpanel200, battery: agm200, user: user3)

        crx65_build = BuildAppliance.create!(
          use_hours: 18, amp_hours: 36, build: build9, appliance: crx65
        )

        led8pack_build = BuildAppliance.create!(
          use_hours: 3, amp_hours: 8, build: build9, appliance: led8pack
        )

        maxxfandeluxe_build = BuildAppliance.create!(
          use_hours: 12, amp_hours: 4, build: build9, appliance: maxxfandeluxe
        )

        build9.update(total_price: build9.set_total_price)
  puts "created 6 builds"
