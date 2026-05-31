CTE :
	CTE represent as Common Table Expression.
	CTE use to create a virtual table in the memory just like a view.
	But the diff is View store that table into a memory add CTE remove virtual
		table from memory once execution is completed.
	Or when we need to use any alias column for filter a data i can use CTE.
	CTE always start with keyword 'with'

	-- Syntax :
		with cte_name as 
		(
			-- SQL Statement
		)

		Select * from cte_name

	-- Example :
		With cte_Student as
		(
			Select * from tbl_Student_Master
			Where Student_FullName like 'D%'
		)

		Select * from cte_Student

		-- I want to find a nth highest salary of employee.

		Create Table tbl_EmpSalary
		(
		Employee_ID int primary key identity (1,1),
		Employee_FirstName varchar(12),
		Employee_LastName varchar(15),
		Employee_Salary decimal(10,2)
		)

		Insert into tbl_EmpSalary (Employee_FirstName, Employee_Salary)
		values ('Darshit', 20000), ('Zuber', 29000), ('Sourav', 35000),
		('Varsha', 41000), ('Jay', 35000)

		Select * from tbl_EmpSalary

		-- Find second highest salary
		With cte_EmployeeSalary as 
		(
			Select DENSE_RANK() over(order by Employee_Salary desc) as srno,
				Employee_ID,Employee_FirstName,Employee_Salary
			from tbl_EmpSalary
		)

		Select * from cte_EmployeeSalary
		Where srno = 3


		exec sp_HighestSalary @SalaryRank = 2

		-- I want to identify duplicate records from table
		-- Partition By :
			Parition by assing a sequantial number to duplicate record 
				and index 1 for the unique records.

			Select * from tbl_EmpSalary

			Insert into tbl_EmpSalary(Employee_FirstName,Employee_LastName)
			values('Darshit','Kansara'),('Jay','Patel'),('Zuber','Waghela')

			Update tbl_EmpSalary set
				Employee_LastName = 'Patel'
			Where Employee_ID = 5

			With cte_Employee as
			(
				Select ROW_NUMBER() 
					over(partition by Employee_FirstName,Employee_LastName order by Employee_FirstName) as srno,
				Employee_FirstName,Employee_LastName
				from tbl_EmpSalary
			)

			Delete from cte_Employee 
			where srno > 1

			Select * from cte_Employee
			Where srno > 1