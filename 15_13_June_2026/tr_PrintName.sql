Alter trigger tr_PrintName
On tbl_Student_Master
For Insert
As
Begin
	Declare @Name varchar(20)
	Declare @Id int

	Select @Name = Student_FullName from inserted
	Select @Id = STudent_Id from inserted

	Print(Concat_WS(' ','Data Inserted Successfully with id',@Id, 
		'and name is',@Name))
End