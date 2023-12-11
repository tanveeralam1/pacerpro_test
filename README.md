**This project implements soft delete functionality in a Rails application. Soft delete allows records to be marked as deleted without being physically removed from the database, providing a way to retain data integrity while hiding deleted records from most queries.
**
**

These steps assume one does not already have rails configured in their system, if they did, they would simply clone the repo, and run rails server, or in our case to just run the tests: **rails test**

Setup Instructions**
Prerequisites
Ruby (version X.X.X)
Rails (version X.X.X)
PostgreSQL/MySQL/SQLite (choose one)

**Installation Steps**
Clone the repository:
git clone https://github.com/tanveeralam1/pacerpro_test.git

**Navigate to the project directory:**
cd pacerpro_test

**Install dependencies:**
bundle install

**Set up the database:**
rails db:create
rails db:migrate
rails db:migrate RAILS_ENV=test # For test database

**Running the Application
To start the server:**

rails server


Access the application at http://localhost:3000.

Running Tests
To execute the test suite:

**rails test**

You can first implement and then delete to check:

# Using Rails Console

item = Item.create(name: 'Example Item')

item.soft_delete   # Soft deletes the item

item.restore       # Restores the soft-deleted item


Implemented Soft Delete Functionality

This Rails model (Item) includes soft delete functionality to mark records as "deleted" without physically removing them from the database. The model attributes include name (string) and deleted_at (datetime).


Soft Delete Functionality:

soft_delete: Marks an item as deleted by updating the deleted_at attribute with the current timestamp.

restore: Restores a soft-deleted item by setting the deleted_at attribute to nil.

Default Scope: Excludes "deleted" items from normal queries.








