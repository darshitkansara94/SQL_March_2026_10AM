Alter trigger tr_DeleteStudent
On tbl_Student_Master
For Delete
As
Begin
	Insert into tbl_Log(Log_Description,Log_TableName)
	Select CONCAT_WS(' ','Data deleted with id',STudent_Id,		
		'And date is',GETDATE()),'tbl_Student_Master' from deleted
End