Order by :
	Order by caluse use to arrange data in ascending order or descending order.
	By default order type is ascending if we use order by clause.
	Ascending order mention using keyword 'asc'
	And descending order mention using keyword 'desc'.

	-- Syntax :
		Select * from tbl_name order by column_name asc/desc

	-- Example :
		Select * from tbl_Student

		-- By default orde ris asc
		Select * from tbl_Student
		Order by Student_FirstName

		Select * from tbl_Student
		Order by Student_FirstName asc

		Select * from tbl_Student
		Order by Student_FirstName desc

		Select * from tbl_Student
		Order by Student_Id desc

		Select Student_FirstName,Student_LastName,Student_Address 
		from tbl_Student
		Order by Student_Id desc

		Select Student_FirstName,Student_LastName,Student_Address 
		from tbl_Student
		Where Student_FirstName = 'Rahul'
		Order by Student_Id desc

		--insert into tbl_Student (Student_Id,Student_FirstName,Student_LastName,
		--Student_EmailId)
		--values (2,'Rahul','Sharma','rahul@23gmail.com'),
		--(4,'Tanmay','Soni','tanmay34@gmail.com'),
		--(5,'Priya','Shah','priya67@gmail.com')