Cursor :
	Cursor is a iterable object. Which read data row by row.
	Just because cursor read all the data row by row it affect the 
		performance issue. So performance of cursor is low.
	Due to cursor possibly other operation may affect.
	Real example of cursor is to read a data row by row and send a
		notificaion to the user.
	When we use cursor it is mandaory to deallocate memory at the end so other
		object can reuse that memory. If we are not deallocate that memory then
		cursor will remain in memory after execution.

	-- Syntax :
		-- To fetch single value
		Declare cursor_name cursor For
			Select column_name,column_name,...,column_name from tbl_name

		Open cursor_name
			Fetch next from cursor_name into @variable
		Close cursor_name
		Deallocate cursor_name

		-- To fetch multiple rows
		Declare cursor_name cursor for
			Select column_name,column_name,...,column_name 
				from tbl_name

		Open cursor_name
			Fetch next from cursor_name into @variable

			While @@fetch_status = 0
			Begin
				Fetch next from cursor_name into @variable
			End
		Close cursor_name
		Deallocate cursor_name

		-- @@fetch_status : This keyword will fetch all the rows from table and
			-- take a count of that rows and iterate a loop until the last row is 
			-- executed.

	-- Example :
		Select * from tbl_EmpSalary

		Declare @EmplyeeName nvarchar(20)
		Declare @EmployeeLastName nvarchar(20)
		Declare @EmployeeId int
		Declare @EmployeeSalary decimal(15,2)

		Declare cr_EmployeeSalary cursor for
			Select Employee_FirstName,Employee_LastName,Employee_Id,Employee_Salary
				from tbl_EmpSalary

		Open cr_EmployeeSalary
			Fetch next from cr_EmployeeSalary into 
				@EmplyeeName, @EmployeeLastName, @EmployeeId, @EmployeeSalary

			Declare @AnnualSalary decimal(18,2)

			Set @AnnualSalary = @EmployeeSalary * 12

			print(concat_ws(' ',@EmployeeId,@EmplyeeName,
				@EmployeeLastName,@AnnualSalary))

			While @@Fetch_status = 0
			Begin
				Fetch next from cr_EmployeeSalary into 
				@EmplyeeName, @EmployeeLastName, @EmployeeId, @EmployeeSalary

				Set @AnnualSalary = @EmployeeSalary * 12

				print(concat_ws(' ',@EmployeeId,@EmplyeeName,
				@EmployeeLastName,@AnnualSalary))
			End
		Close cr_EmployeeSalary
		Deallocate cr_EmployeeSalary