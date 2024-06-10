# db/seeds.rb

# Create students
20.times do |n|
  Student.create!(
    name: "Student #{n + 1}",
    email: "student#{n + 1}@example.com"
  )
end

# Create courses
courses = [
  { name: 'Mathematics' },
  { name: 'History' },
  { name: 'Computer Science' },
  # Add more courses as needed
]

Course.create!(courses)

# Create enrollments (randomly assign students to courses)
Student.all.each do |student|
  enrolled_courses = Course.all.sample(rand(1..courses.length))
  enrolled_courses.each do |course|
    Enrollment.create!(
      student:,
      course:,
      enrollment_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
      grade: rand(50..100)
    )
  end
end

puts 'Seeds data created successfully!'
