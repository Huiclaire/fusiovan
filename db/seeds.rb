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


  user1 = User.create!(email: "email1@email.com", password: "123456", reset_password_token: "reset token test 1", first_name: "Maxime", last_name: "Howard", bio: "Am I supposed to write something here?", user_url: "https://kitt.lewagon.com/placeholder/users/ThierryMR")

  user2 = User.create!(email: "email2@email.com", password: "123456", reset_password_token: "reset token test 2", first_name: "Melissa", last_name: "Ugas", bio: "I like turtles.", user_url: "https://kitt.lewagon.com/placeholder/users/menzoid")

  user3 = User.create!(email: "user3@email.com", password: "123456", reset_password_token: "reset token test 3", first_name: "Jamie", last_name: "Guzman", bio: "I've decided to rent my personal camper van François, so that others can enjoy the beauty of nature and have a comfortable camping experience. I try to be a responsible steward of the land, air, water, and biodiversity. Realizing that we all have impacts when we visit natural areas and parks, I will donate 2% of proceeds to environmental causes, National Parks Foundations, and other friend group organizations. Please reach out with any questions!", user_url: "https://kitt.lewagon.com/placeholder/users/christinasugiono")

  user4 = User.create!(email: "user4@email.com", password: "123456", reset_password_token: "reset token test 4", first_name: "Patricio", last_name: "Henrickson", bio: "We love to camp, our camping love started with backpacking trips in college and as we had kids shifted to long car/RV camping trips with the kids. We have slowly introduced them to backpacking but our primary camping trips are 3-4 days in length. We transitioned from a pop-up trailer and now have a van that we rent out here on Vanish.", user_url: "https://kitt.lewagon.com/placeholder/users/random")


  puts "created 4 users"

# APPLIANCES

  # img_url (need to add in a migration)
  # fridge
    fridge1 = Appliance.create!(kind: "fridge", make: "Dometic", model: "CRX 50", voltage: 12, amps: 1, price: 599, product_url: "https://www.dometic.com/en-us/outdoor/food-and-beverage/refrigerators/camper-van-refrigerators/dometic-crx-50t-231419")
    fridge1x25 = Appliance.create!(kind: "fridge", make: "Dometic", model: "CRX 65", voltage: 12, amps: 1.25, price: 629, product_url: "https://www.dometic.com/en-us/outdoor/food-and-beverage/refrigerators/mini-fridges/dometic-crx-65t-231420")
    fridge2x2 = Appliance.create!(kind: "fridge", make: "Dometic", model: "CRX 140s", voltage: 12, amps: 2.2, price: 1820, product_url: "https://www.dometic.com/en-us/outdoor/food-and-beverage/refrigerators/rv-refrigerators/dometic-crx-140s-136705")


  # lights

    lights1 = Appliance.create!(kind: "lights", make: "Acegoo", model: "LED Puck 4 Pack", voltage: 12, amps: 1, price: 28, product_url: "https://acegoo.myshopify.com/products acegoo-rv-boat-led-recessed-ceiling-light-4-pieces-super-slim-full-aluminum-1")
    lights1x5 = Appliance.create!(kind: "lights", make: "Acegoo", model: "LED Puck 6 Pack", voltage: 12, amps: 1.5, price: 39, product_url: "https://acegoo.myshopify.com/products/12v-led-puck-light-rv-boat-overhead-recessed-mount-ceiling-light-12v-down-light-for-camper-vans-truck-motorhome-sailboat-interior-lighting-6-pack")
    lights2 = Appliance.create!(kind: "lights", make: "Acegoo", model: "LED Puck 8 Pack", voltage: 12, amps: 2, price: 56, product_url: "https://acegoo.myshopify.com/products acegoo-rv-boat-led-recessed-ceiling-light-4-pieces-super-slim-full-aluminum-1")

  # fan

    fan1x2 = Appliance.create!(kind: "fan", make: "Dometic", model: "Fantastic Fan", voltage: 12, amps: 1.2, price: 282, product_url: "https://www.dometic.com/en-us/outdoor/climate-and-comfort/ventilation-solutions/rv-roof-vents/dometic-fantastic-vent-3350-21213")
    fanx5 = Appliance.create!(kind: "fan", make: "Maxxair", model: "Maxxfan", voltage: 12, amps: 0.5, price: 256, product_url: "https://www.airxcel.com/rv/maxxair/products/fans/maxxfan")
    fanx6 = Appliance.create!(kind: "fan", make: "Maxxair", model: "Maxxfan Deluxe", voltage: 12, amps: 0.6, price: 338, product_url: "https://www.airxcel.com/rv/maxxair/products/fans/maxxfan-deluxe")


  # pump

    pump6 = Appliance.create!(kind: "pump", make: "ProGear", model: "3200 RV Pump", voltage: 12, amps: 6, price: 130, product_url: "https://www.usaadventuregear.com/collections/progear-12-volt-water-macerator-pumps/products/progear-3200-rv-replacement-water-pump-for-shurflo-4800-2088-revolution-pump")
    pump7x7 = Appliance.create!(kind: "pump", make: "ShurFlo", model: "4008 Water Pump", voltage: 12, amps: 7.5, price: 69, product_url: "https://www.shurflowaterpump.com/")
    pump10 = Appliance.create!(kind: "pump", make: "Bayite", model: "Fresh Water Pump", voltage: 12, amps: 10, price: 30, product_url: "https://www.amazon.com/bayite-Diaphragm-Priming-Pressure-Adjustable/dp/B074MZYS37/")

  # charger

      charger1 = Appliance.create!(kind: "charger", make: "Qidoe", model: "2 Pack QC Outlet", voltage: 12, amps: 1, price: 17, product_url: "https://www.amazon.com/Outlet-Charge-Waterproof-Charger-Motorcycle/dp/B089SNPYFL/ref=sr_1_10?crid=149OIKSU03BKX&keywords=12v+outlet&qid=1655131280&sprefix=12v+outl%2Caps%2C340&sr=8-10")
      charger6 = Appliance.create!(kind: "charger", make: "Wotobeus", model: "120W Charger", voltage: 12, amps: 6, price: 42, product_url: "https://www.amazon.com/Charger-WOTOBEUS-Charging-Cigarette-S21Ultra/dp/B09GJTF54Z/ref=sr_1_3?crid=1E3035OGZ2HDJ&keywords=high+watt+usb+c+car+charger&qid=1655131701&sprefix=high+watt+usb+c+car+charger%2Caps%2C442&sr=8-3")
      charger3 = Appliance.create!(kind: "charger", make: "Ainope", model: "48W Charger", voltage: 12, amps: 3, price: 18, product_url: "https://www.amazon.com/Charger-AINOPE-Adapter-Compatible-Samsung/dp/B07RHSD9WM/ref=sr_1_2?crid=1E3035OGZ2HDJ&keywords=high+watt+usb+c+car+charger&qid=1655131701&sprefix=high+watt+usb+c+car+charger%2Caps%2C442&sr=8-2")


  # inv

    inv8 = Appliance.create!(kind: "inverter", make: "Xantrax", model: "SW 600", voltage: 12, amps: 8, price: 215, product_url: "https://xantrex.com/products/inverters/prowattsw/")
    inv14 = Appliance.create!(kind: "inverter", make: "Xantrax", model: "SW 1000", voltage: 12, amps: 14, price: 325, product_url: "https://xantrex.com/products/inverters/prowattsw/")
    inv20 = Appliance.create!(kind: "inverter", make: "Xantrax", model: "SW 2000", voltage: 12, amps: 20, price: 365, product_url: "https://xantrex.com/products/inverters/prowattsw/")

    puts "created #{Appliance.count} appliances"

  # panel

    panel100 = SolarPanel.create!(kind: "Rigid", make: "Renogy", model: "100W Panel", voltage: 12, watts: 100, price: 120, product_url: "https://renogy.com/renogy-100-watt-12-volt-monocrystalline-solar-panel/")
    panel450 = SolarPanel.create!(kind: "Rigid", make: "Renogy", model: "450W Panel", voltage: 12, watts: 450, price: 899, product_url: "https://renogy.com/450-watt-monocrystalline-solar-panel/")
    panel170 = SolarPanel.create!(kind: "Rigid", make: "Renogy", model: "Flex 170W Panel", voltage: 12, watts: 170, price: 320, product_url: "https://renogy.com/175-watt-12-volt-flexible-monocrystalline-solar-panel/")

      puts "created #{SolarPanel.count} solar panels"

# battery

  battery100 = Battery.create!(kind: "AGM", make: "Renogy", model: "AGM Deep Cycle", voltage: 12, amp_hours: 100, price: 269.99, product_url: "https://renogy.com/deep-cycle-agm-battery-12-volt-100ah/")
  battery200 = Battery.create!(kind: "AGM", make: "Renogy", model: "AGM Deep Cycle", voltage: 12, amp_hours: 200, price: 395.99, product_url: "https://renogy.com/deep-cycle-agm-battery-12-volt-200ah/")
  battery170 = Battery.create!(kind: "Lithium Iron Phosphate", make: "Renogy", model: "Li-ion Deep C", voltage: 12, amp_hours: 170, price: 1279.99, product_url: "https://renogy.com/lithium-iron-phosphate-battery-12-volt-170ah/")

  puts "created #{Battery.count} batteries"

# BUILDS

  # user 1 24ah
    build1 = Build.create!(name: 'stay light', solar_panel: panel100, battery: battery100, user: user4)
    fridge1_build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 12, build: build1, appliance: fridge1
    )
    lights1build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 12, build: build1, appliance: lights1
    )
    build1.update(total_price: build1.set_total_price)


  # user 1 48ah
    build2 = Build.create!(name: 'Westy', solar_panel: panel170, battery: battery200, user: user1)

    fridge1x25_build = BuildAppliance.create!(
      use_hours: 20, amp_hours: 25, build: build2, appliance: fridge1x25
    )

    lights1x5_build = BuildAppliance.create!(
      use_hours: 3, amp_hours: 4.5, build: build2, appliance: lights1x5
    )

    fan1x2_build = BuildAppliance.create!(
      use_hours: 10, amp_hours: 12, build: build2, appliance: fan1x2
    )

    pump6_build = BuildAppliance.create!(
      use_hours: 1, amp_hours: 6, build: build2, appliance: pump6
    )

    build2.update(total_price: build2.set_total_price)

  # user 1 61ah
    build3 = Build.create!(name: 'Sprint Deluxe', solar_panel: panel450, battery: battery170, user: user3)

    fridge2x2_build = BuildAppliance.create!(
      use_hours: 10, amp_hours: 22, build: build3, appliance: fridge2x2
    )

    lights2_build = BuildAppliance.create!(
      use_hours: 6, amp_hours: 12, build: build3, appliance: lights2
    )

    fanx6_build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 7, build: build3, appliance: fanx6
    )

    # pump6_build = BuildAppliance.create!(
    #   use_hours: 2, amp_hours: 12, build: build3, appliance: pump6
    # )

    charger1_build = BuildAppliance.create!(
      use_hours: 8, amp_hours: 8, build: build3, appliance: charger1
    )


    build3.update(total_price: 1422)

    ######################

  # user 2 24ah
    build4 = Build.create!(name: 'Utah', solar_panel: panel100, battery: battery100, user: user2)
    fridge1_build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 12, build: build4, appliance: fridge1
    )
    lights1build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 12, build: build4, appliance: lights1
    )
    build4.update(total_price: build4.set_total_price)


  # user 2 48ah
    build5 = Build.create!(name: 'Amine', solar_panel: panel170, battery: battery200, user: user2)

    fridge1x25_build = BuildAppliance.create!(
      use_hours: 20, amp_hours: 25, build: build5, appliance: fridge1x25
    )

    lights1x5_build = BuildAppliance.create!(
      use_hours: 3, amp_hours: 4.5, build: build5, appliance: lights1x5
    )

    fan1x2_build = BuildAppliance.create!(
      use_hours: 10, amp_hours: 12, build: build5, appliance: fan1x2
    )

    pump6_build = BuildAppliance.create!(
      use_hours: 1, amp_hours: 6, build: build5, appliance: pump6
    )

    build5.update(total_price: build5.set_total_price)

  # user 2 61ah
    build6 = Build.create!(name: 'Folds', solar_panel: panel450, battery: battery170, user: user2)

    fridge2x2_build = BuildAppliance.create!(
      use_hours: 10, amp_hours: 22, build: build6, appliance: fridge2x2
    )

    lights2_build = BuildAppliance.create!(
      use_hours: 6, amp_hours: 12, build: build6, appliance: lights2
    )

    fanx6_build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 7, build: build6, appliance: fanx6
    )

    pump6_build = BuildAppliance.create!(
      use_hours: 2, amp_hours: 12, build: build6, appliance: pump6
    )

    charger1_build = BuildAppliance.create!(
      use_hours: 8, amp_hours: 8, build: build6, appliance: charger1
    )

    build6.update(total_price: build6.set_total_price)

#######################

  # user 3 24ah
  build7 = Build.create!(name: 'Canggu', solar_panel: panel100, battery: battery100, user: user3)
  fridge1_build = BuildAppliance.create!(
    use_hours: 12, amp_hours: 12, build: build7, appliance: fridge1
  )
  lights1build = BuildAppliance.create!(
    use_hours: 12, amp_hours: 12, build: build7, appliance: lights1
  )
  build7.update(total_price: build7.set_total_price)


  # user 3 48ah
    build8 = Build.create!(name: 'Sprinter', solar_panel: panel170, battery: battery200, user: user3)

    fridge1x25_build = BuildAppliance.create!(
      use_hours: 20, amp_hours: 25, build: build8, appliance: fridge1x25
    )

    lights1x5_build = BuildAppliance.create!(
      use_hours: 3, amp_hours: 4.5, build: build8, appliance: lights1x5
    )

    fan1x2_build = BuildAppliance.create!(
      use_hours: 10, amp_hours: 12, build: build8, appliance: fan1x2
    )

    pump6_build = BuildAppliance.create!(
      use_hours: 1, amp_hours: 6, build: build8, appliance: pump6
    )

    build8.update(total_price: build8.set_total_price)

  # user 3 61ah
    build9 = Build.create!(name: 'Koala', solar_panel: panel450, battery: battery170, user: user4)

    fridge2x2_build = BuildAppliance.create!(
      use_hours: 6, amp_hours: 20, build: build9, appliance: fridge2x2
    )

    lights2_build = BuildAppliance.create!(
      use_hours: 4, amp_hours: 8, build: build9, appliance: lights2
    )

    fanx6_build = BuildAppliance.create!(
      use_hours: 12, amp_hours: 7, build: build9, appliance: fanx6
    )

    pump6_build = BuildAppliance.create!(
      use_hours: 2, amp_hours: 11, build: build9, appliance: pump6
    )

    charger1_build = BuildAppliance.create!(
      use_hours: 4, amp_hours: 2, build: build9, appliance: charger1
    )

    build9.update(total_price: 1840)

puts "created #{Build.count} builds"


  Bookmark.create(user: user1, build: build4)
  Bookmark.create(user: user1, build: build8)
  Bookmark.create(user: user2, build: build6)
  Bookmark.create(user: user3, build: build7)
  Bookmark.create(user: user1, build: build9)

  puts "created #{Bookmark.count} bookmarks"
