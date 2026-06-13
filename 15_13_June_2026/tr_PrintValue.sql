Create trigger tr_PrintValue
ON tbl_Student_Master
For Insert
As
Begin
	Print('Data inserted successfully...')
End