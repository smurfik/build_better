# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
company = Company.create(name: "Sunny Construction")
company.create_address(street: "4 Sunny Street", city: "Seattle", state: "WA", zip: "98102")

admin = User.create(
          username: "admin",
          email: "admin@example.com",
          company_id: company.id,
          password: "go",
          password_confirmation: "go",
          admin: true)

project_1 = Project.create(
  name: "The Tallest Building",
  description: "Prior to 1998, the tallest building status was determined by the height of the building to the top of its architectural elements including spires, but not including 'temporary' structures (such as antennas or flagpoles), which could be added or changed relatively easily without requiring major changes to the building's design.",
  image_url: "https://placekitten.com/200/201",
  company_id: company.id)

project_1.create_address(street: "123 Main Street", city: "Rockville", state: "MD", zip: "20853")

project_2 = Project.create(
  name: "The Pool",
  description: "Prior to 1998, the tallest building status was determined by the height of the building to the top of its architectural elements including spires, but not including 'temporary' structures (such as antennas or flagpoles), which could be added or changed relatively easily without requiring major changes to the building's design.",
  image_url: "https://placekitten.com/200/201",
  company_id: company.id)

project_2.create_address(street: "123 East Street", city: "Seattle", state: "WA", zip: "98102")

bob = User.create(
          username: "bob",
          email: "bob@example.com",
          company_id: company.id,
          password: "go",
          password_confirmation: "go")

molly = User.create(
          username: "molly",
          email: "molly@example.com",
          company_id: company.id,
          password: "go",
          password_confirmation: "go")


frank = User.create(
          username: "frank",
          email: "frank@example.com",
          company_id: company.id,
          password: "go",
          password_confirmation: "go")

bob.projects << project_1
molly.projects << project_1
