System Defined function (SDF) :
	System defined functions are functions that are already defined by the system
		and we can use it multiple times.
	Functions are a special code which we can write once and use multiple times.
	When we use the same code multiple times it reduce duplicacy of code and 
		easy to maintain code.

	-- Types of SDF :
		Aggregate function :
			This function is use to perform mathemetical operations.

			-- Types of Aggregate function :
				Sum() :
					Give addition of two or more numbers.

					-- Syntax :
						Select SUM(expression) from tbl_name

					-- Example :
						Select SUM(10 + 10)

						Select * from tbl_StudentDetails						

						Select SUM(Student_Detail_Marks) as Total_Marks,
							Student_Detail_Subject
						from tbl_StudentDetails

				Avg() :
					Return average value of total numbers

					-- Syntax :
						Select AVG(expression) from tbl_name

					-- Example :
						Select * from tbl_StudentDetails

						Select AVG(Student_Detail_Marks) as Average 
						from tbl_StudentDetails

				Count : 
					Return total number of rows from table.

					-- Syntax :
						Select Count(expression) from tbl_name

					-- Example :
						Select * from tbl_Student

						Select COUNT(*) from tbl_Student

						Select COUNT(Student_EmailId) from tbl_Student
						Where Student_Address = 'Baroda'

						Select COUNT(Student_DOB) from tbl_Student						

				Max :
					This function return maximum value from column.

					-- Syntax :
						Select Max(expression) from tbl_name

					-- Example :
						Select MAX(Student_Detail_Marks) from tbl_StudentDetails

				Min :
					Return Minimum value from the column.

					-- Syntax :
						Select Min(expression) from tbl_name

					-- Example :
						Select Min(Student_Detail_Marks) from tbl_StudentDetails

			Select Sum(Student_Detail_Marks) as Total_Marks,
				AVG(Student_Detail_Marks) as Marks_Avg,
				Count(*) as Total_Rows,
				Max(Student_Detail_Marks) as Maximum_Marks,
				MIN(Student_Detail_Marks) as Minimum_Marks
			from tbl_StudentDetails

		String function :
			String function use to manipulate string value.

			-- Types of string function :
				Len :
					Use to idenify the length of string.
					
					-- Syntax :
						Select LEN(expression) from tbl_name

					-- Example :
						Select * from tbl_Student

						Select LEN(Student_FirstName),
							Student_FirstName
						from tbl_Student

				Concat with + :
					Merge two or more than two words and present it as a single string.

					-- Syntax :
						Select expression1 + expression2 from tbl_name

					-- Example :
						Select 'Hello' + ' ' + 'World'

						Select * from tbl_Student

						Select 
							Student_FirstName,Student_LAstName,
							Student_FirstName + ' ' + Student_LAstName as FullName
						from tbl_Student

						Update tbl_Student set
							Student_Fullname = Student_FirstName + ' ' + Student_LAstName

				Concat :
					Working scenerio is similar ot the concat with + but this is the string
						function.
					Compare to upper concat function this function is more accurate in terms
						of performance.

					-- Syntax :
						Select Concat(expression1,expression2,...,expressionN)

					-- Example :
						Select Concat('Hello',' ','World')

						Select Concat('Hello',' ','World',' ','Weltec')

						Select Concat(Student_FirstName, ' ' ,Student_LastName) 
						from tbl_Student

				Concat_WS :
					WS present as a  with Seperator.
					Working mechanism is similar to the conat function.

					-- Syntax :
						Select Concat_WS(seperator,expression1,expression2,...,expressionN)
						from tbl_name

					-- Example :
						Select concat_ws('-','Hello','World','Weltec') -- Hello-World

						Select Concat_ws(' ',Student_FirstName,Student_LastName)
						from tbl_Student

				Upper :
					Convert a string valu into upper case.

					-- Syntax :
						Select Upper(expression) from tbl_name

					-- Example :
						Select Upper('hello')

						Select Upper('heLLo')

					
				Lower :
					Convert a string value into lower case

					-- Syntax :
						Select Lower(expression) from tbl_name

					-- Example :
						Select lower('Hello')

						Select	
							Upper(Student_FirstName),Lower(Student_FirstName)
						from tbl_Student

						Select	
							Upper(Concat_ws(' ',Student_FirstName,
								Student_Lastname))
						from tbl_Student

				Trim :
				Rtrim :
				Ltrim :
				Left :
				Right :
				Substring :

		Date Function