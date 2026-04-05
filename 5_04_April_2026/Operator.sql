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
			Not return data in a  negative way.


			

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
		In :
			We can filter multiple or single value from the column.
			Value must be comma seperated.

			-- Syntax :
				Select * from tbl_name
				Where column_name in (expression1.expression2,...,expressionN)

			-- Example :
				Select * from tbl_Student

				Select * from tbl_Student
				Where Student_Address in ('Bangalore','baroda','Rajkot','Ahmedabad')

				Select * from tbl_Student
				Where Student_Address = 'Bangalore'
					Or Student_Address = 'Baroda'
					Or Student_Address = 'Rajkot'	
					
				-- With Not Operator
				Select * from tbl_Student
				Where Student_Address not in ('Bangalore','Rajkot','Ahmedabad')

		Like :
			Like operator use to find a value with search criteria Startwith,Endwith and 
				contains.
			We will use '%' sign to filter values.

			-- Syntax :
				-- Startwith
				Select * from tbl_name
				Where column_name like 'char/string%'

				-- Endwith
				Select * from tbl_name
				where column_name like '%char/string'

				-- Contains
				Select * from tbl_name
				Where column_name like '%char/string%'

			-- Example :
				Select * from tbl_Student
				Where Student_FirstName like 'Pr%'

				select * from tbl_Student
				where Student_FirstName like '%i'

				select * from tbl_Student
				where Student_LastName like '%amin%'

				-- With Not operator
				Select * from tbl_Student
				Where Student_FirstName not like 'Pr%'

		Between :
			When we want to define a range and based on that data is got 
				filterd.
			We can use And operator only with the between

			-- Syntax :	
				Select * from tbl_name
				Where column_name between expression1 And expression2

			-- Example :
				Select * from tbl_Student
				Where Student_Id between 3 And 6

				Select * from tbl_Student
				Where Student_Id between 6 And 3

				-- With Not operator
				Select * from tbl_Student
				Where Student_Id not between 3 And 6

		null :
			To filter a data with null value.

			-- Syntax :
				Select * from tbl_name
				Where column_name is null

			-- Example :
				Select * from tbl_Student
				Where Student_EmailId is null

				-- With not operator
				Select * from tbl_Student
				Where Student_EmailId is not null


			
			