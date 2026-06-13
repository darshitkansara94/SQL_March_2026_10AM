Transaction :
	Transaction maintain a state  when we are insert data into multiple tables or 
		we are execute multiple SQL statements.
	In trasation we have two concept
		-- Commit :
			When all the statement execute successfully without any error than commit
				statement execute.
			If any error occured in between then commit statement is ignored.
			Data is in read-only state until the commit statemet got execute

		-- Rollback :
			When we get any error during the execution than all the entries
				got reverese and remove the data that entere in that particular
				session.
			But once commit is done we can not rollback that data from table.

		-- Syntax :
			Begin transaction tr_name
				-- SQL Statement
			Commit transaction tr_name

			Rollback transaction tr_name

			Begin transaction tr_InsertSalary
			Insert into tbl_EmpSalary(Employee_FirstName,Employee_LastName,Employee_Salary)
			values('Jay','Shah',52000)
			Commit transaction tr_InsertSalary

			Rollback transaction tr_InsertSalary

			Select * from tbl_EmpSalary

