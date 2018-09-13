require 'sqlite3'
database = SQLite3::Database.new( "new.database" )

database.execute( "create table names (id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT);" )

database.execute( "insert into sample_table (sample_text,sample_number) values ('Sample Text1', 123)")
database.execute( "insert into sample_table (sample_text,sample_number) values ('Sample Text2', 456)")

database.execute( "insert into names (first_name, last_name) values ('Izzy', 'Conner')")

rows = database.execute( "select * from sample_table" )

p rows