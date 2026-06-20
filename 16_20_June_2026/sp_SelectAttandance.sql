Alter procedure sp_SelectAttandance
(
	@AttandanceDate date = null
)
As
Begin
	If @AttandanceDate is null
	Begin
		Set @AttandanceDate = GETDATE()
	End

	Select * from tbl_StudentMaster
		Where Student_Id not in (
			Select Student_Id from tbl_StudentAttandance
			Where cast(Attandance_Date as date) = @AttandanceDate
		)
End


Exec sp_SelectAttandance 
	@AttandanceDate = '2026-06-19 12:50:33.690' 

Select GETDATE()