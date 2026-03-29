Where clause :
	we can apply or create a filter for the data by using where clause.
	We can add multiple column in the where cluase if we need to.
	We can use this on Select, Update and delete statament to get partcular data.

	-- Syntax :
		-- Select Statement
			Select * from tbl_name
			where column_name = expression

		-- Update
			Update tbl_name set
				column_name = expression
			Where column_name = expression

		-- Delete
			Delete from tbl_name Where column_name = expression



	-- Example :
		Select * from tbl_Student

		insert into tbl_Student(Student_Id, Student_FirstName, Student_LastName, 
			Student_EmailId)
		values(4, 'varsha', 'belani', 'varsha12@gmail.com'),
			(2, 'jyoti', 'yadav', 'jyoti123@gmail.com'),
			(3, 'hetvi', 'amin', 'hetvi123@gmail.com')

		Select * from tbl_Student
		Where Student_FirstName = 'jyoti'

		Select * from tbl_Student
		Where Student_FirstName = 'JYOTI'

		Select * from tbl_Student
		Where Student_Id = 3

		Select * from tbl_Student
		Where Student_Id = 4

		-- Update :
		Select * from tbl_Student

		Update tbl_Student set
			Student_Address = 'Vadodara'

		Update tbl_Student Set
			Student_Address = 'Ahmedabad'
		Where Student_FirstName = 'Hetvi'

		Update tbl_Student Set
			Student_Address = 'Bangalore',Student_MobileNo = 12345678
		Where Student_FirstName = 'Hetvi'

		Update tbl_Student Set
			Student_Address = 'Bangalore',Student_MobileNo = 123456
		Where Student_FirstName = 'Heti'

		Delete from tbl_Student where Student_Id = 2

		-- To verify record
		Update tbl_Student Set
			Student_Address = 'Bangalore',Student_MobileNo = 12345678
		Where Student_FirstName = 'varsha'

		Select * from tbl_Student Where Student_FirstName = 'varsha'

		Delete from tbl_Student Where Student_FirstName = 'varsha'


		
