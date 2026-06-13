Alter procedure sp_InsertEmployeeSalary
As
Begin
	Begin try
	Begin transaction tr_Insert
		Insert into tbl_Employee(Employee_Name,Employee_Address)
		values('Darshit','Baroda')

		Insert into tbl_EmpSalary(Employee_FirstName,Employee_LastName,Employee_Salary)
		values('Darshit','Kansara',56000)

		Commit transaction tr_Insert
	End try
	Begin catch
		Rollback transaction tr_Insert

		print('Data not inserted')
	End catch
End

Select * from tbl_Employee
Select * from tbl_EmpSalary

Exec sp_InsertEmployeeSalary