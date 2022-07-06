puts('Seeding...')
seasons = %w[spring summer fall winter]

50.times do
  Show.create(name: Faker::Name.name, network: Faker::Company.name, day: Date::DAYNAMES[rand(0..6)],
              rating: rand(1..10), season: seasons.sample)
  print('.')
end
puts('', 'Done seeding')
