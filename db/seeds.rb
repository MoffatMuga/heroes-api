hero1 = Hero.create(name:"Kamala Khan", super_name: "Ms. Marvel")
hero2 = Hero.create(name:"Doreen Green", super_name: "Squirrel Girl")
hero3 = Hero.create(name:"Gwen Stacy", super_name: "Spider-Gwen")

puts "seeding done...."

power1 = Power.create(name:"super strength", description:"gives the wielder super-human strengths")
power2 = Power.create(name:"flight", description:"gives the wielder the ability to fly through the skies at supersonic speed")

puts "seeding done ...."

powers = [
    {
      name: 'super strength',
      description: 'gives the wielder super-human strengths'
    },
    {
      name: 'flight',
      description: 'gives the wielder the ability to fly through the skies at supersonic speed'
    }
  ]
  
  powers.each do |power|
    Power.create(power)
  end

  heroes = [
    {
      name: 'Kamala Khan',
      super_name: 'Ms. Marvel'
    },
    {
      name: 'Peter Parker',
      super_name: 'Spider-Man'
    }
  ]
  
  heroes.each do |hero|
    Hero.create(hero)
  end

  hero_powers = [
    {
      strength: 'Average',
      power_id: 1,
      hero_id: 1
    },
    {
      strength: 'Strong',
      power_id: 2,
      hero_id: 2
    }
  ]
  
  hero_powers.each do |hero_power|
    HeroPower.create(hero_power)
  end