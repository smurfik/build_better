# Build Better

Check it out here: <https://build-better.herokuapp.com>

Test Users:
email: `admin@example.com` password: `go`
email: `bob@example.com` password: `go`

This is a construction themed demo project. The project uses these concepts:
- many to many DB relationship
- polymorphic association
- form with nested attributes
- api call to OpenWeather
- CRUD operations for a project model

While building this project, I've used:
- postgreSQL
- rspec
- httparty
- bourbon/neat

As an admin user you can:
- create, update, and delete a project
- assign and unassign people to a project
- view all of the projects your company has

As a regular user you can:
- view all of the projects you're assigned to
- see all of the people that are on the project
- see a show page for a project

In the seed file I created a company, and all of the users are added to that
company. For the demo purposes, there isn't an interface for creating a company.
If there are multiple companies, user, when signing up can decide which company
to be added to.

I used Gravatar for user's picture. For project pictures, I used a demo
photo for now, not letting the user to add a photo. I'd use Amazon S3 services
to store the images, but I currently don't have an account with them.

Finally, Bourbon and Neat helped me style the website.
