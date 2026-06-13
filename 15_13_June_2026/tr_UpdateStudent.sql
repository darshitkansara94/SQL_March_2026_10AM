Alter trigger tr_UpdateStudent
On tbl_Student_Master
For Update
As
Begin
	Insert into tbl_Log(Log_Description,Log_TableName)
	Select CONCAT_WS(' ','Data updated with id',STudent_Id,		
		'And date is',GETDATE()), 'tbl_Student_Master' from inserted
End