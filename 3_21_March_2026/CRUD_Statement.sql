CRUD Operation :
	C - Create
	R - Read
	U - Update
	D - Delete

 -- Create (Insert) :
	Create / Insert a new record into existing table.
	Every record insert in form of row.
	This statement always create a new record into table.
	Our no of column and no of values are always equal.
		Ex : no of columns = non of values
			no of values = no of columns

	-- Syntax :
		Insert into tbl_name(column_name,column_name,...,column_nameN)
		values(expression1,expression2,....,expressionN)

		-- Multiple data insert
		Insert into tbl_name(column_name,column_name,....,column_name)
		values(expression1,expression2,....,expressionN),
			(expression1,expression2,....,expressionN),
			(expression1,expression2,....,expressionN),...
			(expression1,expression2,....,expressionN)

		-- Insert with select
		Insert into tbl_name(column_name,column_name,...,column_name)
		Select column_name,column_name,...,column_name from tbl_name

	-- Example :
		Insert into tbl_Student(Student_Id,Student_FirstName,Student_LastName,
			Student_EmailId)
		values(1,'Darshit','Kansara','abc@gmail.com')

		-- Insert multipl rows
		Insert into tbl_Student(Student_Id,Student_FirstName,Student_LastName)
		values(2,'Varsh','Belani'),(3,'Jyoti','Yadav'),(4,'Vijay','Bariya')

		-- Insert with select
		Insert into tbl_Student(Student_Id,Student_FirstName,Student_LastName)
		Select 5 as Student_Id,'Zuber' as FirstName,'Waghela' as LastName

		-- Insert with Select
		Insert into DB_Weltech.dbo.tbl_StudentMaster(Student_Id,Student_FirstName,Student_LastName)
		Select Student_Id,Student_FirstName,Student_LastName from tbl_Student


	-- Read (Select) :
		Read data from existing table.
		We can read single record or multiple record from table.
		When we read a data from table it will not affect any existing data
			in the table.

		-- Syntax :
			Select * from tbl_name

			Select column_name1,column_name2,...,column_nameN 
				from tbl_name

		-- Example :
			Select * from tbl_Student

			Select 
				Student_FirstName,Student_LastName,Student_EmailId,
				Student_Id
			from tbl_Student
