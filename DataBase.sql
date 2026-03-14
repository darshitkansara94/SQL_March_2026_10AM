Database :
	Database is collection of data. Where we can store data electonically.
	We can take a backup of data so possibly no chances for data loss.
	We have a option to take a backup of data.
	Database contains tables, views, triggers, functions etc..
	Database name must be unique within that server.

	-- Syntax :
		Create database database_name
		
	-- Example :
		Create database Weltech_DB

	-- Switch DB :
		If i need to switch between one database to another.

		-- Syntax :
			Use database_name

		-- Example :
			Use master

	-- Rename DB :
		Rename DB allow us to rename existing DB without affect data 
			and sql objects.

		-- Syntax :
			Alter database existing_database
			modify name = new_DB_name

		-- Example :
			Alter database DB_Weltech
			modify name = Weltech_DB


	-- Remove DB :
		This syntax use to remove DB.
		Once database got deleted we can not recover or restore that DB
			again.
		If DB is deleted, it will delete all the data too.

		-- Syntax :
			Drop database database_name

		-- Example :
			Drop database Weltech_DB