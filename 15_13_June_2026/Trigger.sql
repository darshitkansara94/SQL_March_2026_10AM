Trigger :
	Trigger is a special type of event that execute on a table.
	We can create a trigger for Insert, Update or delete operation.
	Trigger always create on table. So when any modification happen on table data
		trigger automatically execute the code or event.
	We have a two types of trigger :
		For and After.
	For trigger execute all the statement together including trigger
		statement.
	After trigger first execute all the statement and then execute 
		trigger.
	Trigger does not support parameters.

	-- Syntax :
		-- For trigger
		Create trigger tr_name
		On tbl_name
		For Insert / Update / Delete
		As
		Begin
			-- SQL Statement
		End

		-- After trigger
		Create trigger tr_name
		On tbl_name
		After Insert / Update / Delete
		As
		Begin
			-- SQL statement
		End

	-- Example :
		Insert into tbl_Student_Master(Student_FullName,Student_EmailId)
		values('XYZ','xyz@gmail.com')

		Insert into tbl_Student_Master(Student_Id,Student_FullName,Student_EmailId)
		values(14,'Varsha','abc@gmail.com')

		Select * from tbl_Student_Master
		Select * from tbl_Log

		Update tbl_Student_Master set
			Student_Address = 'Baroda'
		Where Student_Id = 14

		Delete from tbl_Student_Master where Student_Id = 14

		--Drop trigger tr_PrintName
		--Drop trigger tr_PrintValue

		Alter table tbl_Log
		Add Log_TableName nvarchar(30)

		Alter table tbl_Log
		Add Log_UserId int

		Exec sp_InsertStudentData
			@StudetId = 16,
			@StudentName = 'Sajir',
			@StudentAddress = 'Kuwait',
			@StudentAge = 15,
			@UserId = 2

		