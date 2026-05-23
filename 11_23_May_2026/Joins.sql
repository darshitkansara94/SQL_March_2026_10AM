Joins :
	Joins combine a output for two or more than two tables and represent it as
		single output.
	We can combine multiple table and compare a value using FK.

	-- Types of join :
		Inner join :
			Inner join return common data between multiple tables.

			-- Syntax :
				Select column_name,column_name,...,column_name from tbl_A
				inner join tbl_B on
					tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select * from tbl_Student
				Select * from tbl_StudentDetail

				Select * from tbl_Student
				Inner join tbl_StudentDetail
					on tbl_Student.Student_Id = tbl_StudentDetail.Student_Id

				Select s.Student_Name,s.Student_Age,s.Student_Address,
				sd.Student_Subject,sd.Student_Marks
				from tbl_Student as s
				Inner join tbl_StudentDetail as sd
					on s.Student_Id = sd.Student_Id

				Select tbl_Student.Student_Name,tbl_Student.Student_Age,
				tbl_Student.Student_Address,
				tbl_StudentDetail.Student_Subject,tbl_StudentDetail.Student_Marks
				from tbl_Student
				Inner join tbl_StudentDetail
					on tbl_Student.Student_Id = tbl_StudentDetail.Student_Id

		Left join :
			Left join return all the data from left table and matching data from
			Right table.
			In the sql statement first table consider as left table and very next
				table consider as a right table.

			-- Syntax :
				Select * from tbl_A
				Left join tbl_B
					on tbl_A.column_name = tbl_B.column_name

				tbl_A is consider as a left table
				tbl_B is consider as a right table.

			-- Example :
				Select * from tbl_Student
				Select * from tbl_StudentDetail

				Select s.Student_Name,s.Student_Age,s.Student_Address,
				sd.Student_Subject,sd.Student_Marks
				from tbl_Student as s
				Left join tbl_StudentDetail as sd on
					s.Student_Id = sd.Student_Id

				Select s.Student_Name,s.Student_Age,s.Student_Address,
				sd.Student_Subject,sd.Student_Marks
				from tbl_StudentDetail as sd
				Left join tbl_Student as s on
					s.Student_Id = sd.Student_Id

		Right join :
			Return matching data from left table and all the data from right table.

			-- Syntax :
				Select * from tbl_A
				Right join tbl_B on
					tbl_A.column_name = tbl_B.column_name

			-- Example :
				Select * from tbl_Student
				Select * from tbl_StudentDetail

				Select s.Student_Name,s.Student_Age,s.Student_Address,
				sd.Student_Subject,sd.Student_Marks
				from tbl_Student as s
				Right join tbl_StudentDetail as sd on
					s.Student_Id = sd.Student_Id

				Select s.Student_Name,s.Student_Age,s.Student_Address,
				sd.Student_Subject,sd.Student_Marks
				from tbl_Student as s
				Right join tbl_StudentDetail as sd on
					 sd.Student_Id = s.Student_Id

				Select s.Student_Name,s.Student_Age,s.Student_Address,
				Isnull(sd.Student_Subject,'---') as Student_Subject,
				Isnull(sd.Student_Marks,0) as Student_Marks
				from tbl_StudentDetail as sd
				Right join tbl_Student as s on
					 sd.Student_Id = s.Student_Id

		Self join :
			Self join apply on a single table only.
			Table connect / join with itself.

			-- Syntax :
				Select * from tbl_A as A,tbl_A as B
				Where A.column_name = B.column_name

			-- Example :
				create table employee_details
				(
				employee_id int primary key identity(1,1),
				employee_name varchar(12),
				employee_salary decimal(10,2),
				manager_id int
				)


				insert into employee_details(employee_name, employee_salary,
												manager_id)
				values('Jay', 25000, 5),
						('Vineetha', 26000, 5),
						('Jitendra', 24000, 4),
						('Varsha', 26000, 2),
						('Jyoti', 28000, 2)

				select * from employee_details

				Select t1.employee_name as Manager_Name,
					t1.employee_salary as Manager_Salary,
					t2.employee_name as Employee_Name,
					t2.employee_salary as Employee_Salary
				from employee_details as t1,employee_details as t2
				Where t1.employee_id = t2.manager_id


-- Assignement
Create a database with name Ecommerce_DB
	Create a table wth name Category
		category Id
		Name

	Create a table with name Subcategory
		Subcateory Id
		Category Id
		Sub category Name
		Price
		Qty

	Create a table with name Order
		Order Id
		Subcateory Id
		Order Date
		Order Qty
