Create procedure sp_UpdateEmployee
(
	@Id int,
	@Employee_Age int
)
As
Begin
	Update tbl_Employee Set
		Employee_Age = @Employee_Age
	Where Employee_Id = @Id
End