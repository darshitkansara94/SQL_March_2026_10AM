Alter trigger tr_InsertLog
On tbl_Student_Master
For Insert
AS
Begin
	-- Insert data with variable
	--Declare @Name varchar(20)
	--Declare @Id int

	--Select @Name = Student_FullName from inserted
	--Select @Id = STudent_Id from inserted

	--Insert into tbl_Log(Log_Description)
	--values(CONCAT_WS(' ','Data inserted with id',@Id,'And Name is',@Name,
	--	'And data inserted on',getdate()))

	-- Insert data without variable
	Insert into tbl_Log(Log_Description,Log_TableName)
	Select CONCAT_WS(' ','Data inserted with id',STudent_Id,
		'And Name is',Student_FullName,
		'And date is',GETDATE()),'tbl_Student_Master' from inserted
End