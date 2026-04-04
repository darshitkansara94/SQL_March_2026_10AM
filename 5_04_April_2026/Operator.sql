Operators :
	Operators are use to compare values, perform some mathametical operation or 
		assign values.

	-- Arithmetic operator :
		This type of operator perform mathematical things.

		-- Types of Arithmetic operator :
			Addition(+) :
				Do addition of two or more than two numbers.

				-- Syntax :
					Select exprssion1 + expression2

				-- Example :
					Select 10 + 20 as Addition

					Select 10 + 'abc'

					Select * from tbl_Student

					Select Student_Id,Student_Detail_Marks,
						Student_Id + Student_Detail_Marks as Addition 
					from tbl_StudentDetails

			Substraction (-) :
				Subsctract value.

				-- Syntax :
					Select expression1 - expression2

				-- Example :
					Select 20 - 10 as Substraction

			Division (/) :
				Perform division of two numbers.

				-- Syntax :
					Select expression1 / expression2

				-- Example :
					Select 10/0 as Division

					Select 10/2 as Division

			Multiplication (*) :
				Multiply numbers

				-- Syntax :
					Select expression1 * expression2

				-- Example :
					Select 10 * 10 as Multiplication

			Modulo (%) :
				Return reminder.

				-- Syntax :
					Select expression1 % expression2

				-- Example :
					Select 13 % 2


	-- Bit wise operator :
		And :
			And use to write multiple conditions.
			It represent, if all condition is true then only we will get output
				or if any one condition is false then we will get empty result.

			-- Syntax :
				Select * from tbl_name
				Where column_name = expression1 And column_name = expression2,..

			-- Example :
				Select * from tbl_Student
				Where Student_FirstName = 'Rahul'
					And Student_LastName = 'Shah'

				Select * from tbl_Student
				Where Student_FirstName = 'Rahul'
					And Student_LastName = 'sharma'
					And Student_Address = 'Baroda'


				Select * from tbl_Student
				Where Student_FirstName = 'Rahul'
					And Student_Address = 'Baroda'

				--Update tbl_Student set
				--	Student_Address = 'Baroda' where Student_Id = 2

				--Insert into tbl_Student(Student_Id,Student_FirstName,Student_LastName,
				--	Student_Address)
				--values(6,'Rahul','Khatri','Baroda'),(7,'Rahul','Rana','Ahmedabad')

		OR :
			Or operator use to write multiple conditions.
			If any of the condition is true then we will get output.

			-- Syntax :
				Select * from tbl_name
				Where column_name = expression1 OR column_name = expression2

			-- Example :
				Select * from tbl_Student
				Where Student_FirstName = 'Rahul'
					OR Student_LastName = 'Shah'
					Or Student_Address = 'Pune'

		Not :
			

	-- Comparision operator :
		Use to compare values

		-- Types of comparision operator :
			Equal to (=) :
				Two compare two values equally. Here we need to write like
					LHS = RHS.

				-- Syntax :
					Select * from tbl_name
					Where column_name = expression1

				-- Example :
					Select * from tbl_Student
					Where Student_Id = 2

			Greater than (>) :
				If LHS value is greater than RHS calue then only condition true.
				If both values are equal then condition will be false.

				-- Syntax :
					Select * from tbl_name
					Where column_name > expression1

				-- Example :
					Select * from tbl_Student
					Where Student_Id > 3

					Select * from tbl_Student

			Greater than or Equal to (>=) :
				Here, We are verifying greater than and equal to both the consitios.
				If we have any greater value then we will get those value and if we have 
					any equal value we will get thos vales too.

				-- Synatx :
					Select * from tbl_name
					Where column_name >= expression1

				-- Example :
					Select * from tbl_Student
					Where Student_Id >= 3

					Select * from tbl_Student
					Where Student_Id => 3

					Select * from tbl_Student

			Less than(<) :
				Here, LHS value is small then RHS then only condition is true.

				-- Syntax :
					Select * from tbl_name
					Where column_name < expression1

				-- Example :
					Select * from tbl_Student
					Where Student_Id < 3

			Less than or equal to(<=) :
				Here, We are verifying less than and equal to both the consitios.
				If we have any less value then we will get those value and if we have 
					any equal value we will get thos vales too.

				-- Syntax :
					Select * from tbl_name
					Where column_name <= expression1

				-- Example :
					Select * from tbl_Student
					Where Student_Id <= 3

			Not equal to (!=) :
				This is opposite of equal to operator.
				We will get all the values that is not equal to expression.
				We can represent not equal to with '<>'

				-- Syntax :
					Select * from tbl_name
					Where column_name != expression1

					Select * from tbl_name
					Where column_name <> expression1

				-- Example :
					Select * from tbl_Student
					Where Student_Id != 3

					Select * from tbl_Student
					Where Student_FirstName <> 'Rahul'

	-- Special Operator :