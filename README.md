# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

IF NoMethod:Error PLEASE DO THE FOLLOWING:
  * Access the database through the sql console.
    Type < sqlite3 db/development.sqlite3 > in the command line.
  * Delete the data from the tables in order for the pages to load.
    The app is basically looking for the model connected to a row still on the table with the id but since we deleted by accident it cannot find it.
    So we unfortunately need to delete it for it to load.
    Type < delete from table_name > , where table_name is the name of the table of the page we cannot load.
  * Check the tables to be empty with < select * from table_name >
  * Type < .exit > to exit the sql console.
  * Now the pages should be working normally.

I understand this is an error within the logic of the database. Deleting an artist or an album errors when trying to load the view page for the associated model (eg songs). This can be solved by introducing error handling on the controller or by adding checks to prevent an association being deleted. For now, this will be solved by user education and using SQL queries as above.




note: tests run individually with TEST OPTS but not all together. it is probably a fault of the fixtures, which i did not get to solve.
