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
  image_url: "tallest_building.jpg",
  company_id: company.id)

project_1.create_address(street: "123 Main Street", city: "Rockville", state: "MD", zip: "20853")

project_2 = Project.create(
  name: "The Pool",
  description: "Swimming pools became popular in Britain in the mid-19th century. As early as 1837, six indoor pools with diving boards existed in London, England.[4] The Maidstone Swimming Club in Maidstone, Kent is believed to be the oldest surviving swimming club in Britain. It was formed in 1844, in response to concerns over drownings in the River Medway, especially since would-be rescuers would often drown because they themselves could not swim to safety.",
  image_url: "pool.jpg",
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
bob.projects << project_2
molly.projects << project_1
frank.projects << project_2
