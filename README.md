# Full-stack Rails 6/14/2023

### Setup

- build the rails app on the desktop (not in another repo)
- add the remote: `git remote add origin https://github.com/learn-academy-2023-delta/full-stack-instructors.git`
- `git checkout -b main`
- initial commit and push

### Model

- Herb garden: `rails g model Herb name:string watered:string`
- Add data to the rails c to get started

### Index

- rails g controller Herb
- added controller method called index
- controller method makes an active record query
- route called `herbs`
- view - `index.html.erb` iterate over the query results

### Show

- controller method called show
- controller method makes an active record query for one herb
- herb id comes from params
- route called `herbs` with a required param
- view - `show.html.erb` display query results

### User Experience

- make the index page the landing page
- added route alias to index
- added route alias to show, which requires a param
- used the Ruby method link_to to create navigation
- link_to takes two arguments: 1. the thing you click on and 2. where you go

### New

- controller method called new
- controller method makes an active record query for a new placeholder herb
- route for new method with a alias
- had to reorder the routes to avoid error on the show route
- form_with helper method
- pass the instance variable into the form
- build the form with rails methods from the docs

### Create

- controller method called create
- controller method makes an active record query for to create an new herb
- controller method calls the strong params method
- strong params protects our data from the form and packages up the data into a hash
- route for create method
- redirect_to help method and passed the route alias for index

### Edit

- controller method called edit
- controller method makes an active record query for the herb we are going to edit
- route for edit method with an alias
- copy/paste the form from new but added `method: :patch` to indicate the type of action the form is performing

### Update

- controller method called update
- controller method makes an active record query for the herb we are going to update
- pass strong params to the update method
- route for update method
- redirect_to help method and passed the route alias for show with the instance variable to populate the params

### Destroy

- controller method for destroy
- controller method makes an active record query for the herb we are going to delete
- route for delete method with an alias to call on the button
- redirect_to the index page when deleted
- button where we had to specify the delete action
- pop up.... pending
