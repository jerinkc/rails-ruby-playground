john = Person.create!(name: 'John')
mary = Person.create!(name: 'Mary', parent: john)
david = Person.create!(name: 'David', parent: john)
emily = Person.create!(name: 'Emily', parent: mary)
jack = Person.create!(name: 'Jack', parent: david)
sarah = Person.create!(name: 'Sarah', parent: mary)
Person.create!(name: 'Tom', parent: david)
Person.create!(name: 'Lily', parent: emily)
Person.create!(name: 'Oliver', parent: jack)
Person.create!(name: 'Ava', parent: sarah)

puts 'Seeds data created successfully!'
