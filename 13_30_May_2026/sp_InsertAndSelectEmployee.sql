Alter procedure sp_InsertAndSelectEmployee
(
	@Id int,
	@Name nvarchar(20) = null,
	@Age int = null
)
As
Begin
	print('Id = ' + cast(@id as nvarchar(5)))
	print('Name = ' + @Name)
	print('Age = ' + cast(@Age as nvarchar(5)))

	Insert into tbl_Employee(Employee_Id,Employee_Name,Employee_Age)
	values(@Id,@Name,@Age)

	Select Employee_Id,Employee_Name,Employee_Age from tbl_Employee

End