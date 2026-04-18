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
					WhiteSpace is, space given at starting of the string and ending of the 
						string. This space might be intentional or by mistake.
						Ex : '  Hello World  '
					Trim function removes whitespace from starting of the string and 
						from ending of the string.

					-- Syntax :
						Select trim(expression) from tbl_name

					-- Example :
						Select '  Hello World  ' --  Hello World  

						Select trim('  Hello World  ') --Hello World

						Select * from tbl_Student

						-- I need to add a space in First Name 
						--	where Student id is 2,3,6,4

						Update tbl_Student set
							Student_FirstName = '  ' + Student_FirstName + '  '
						Where Student_Id in (2,3,6,4)

						Select Student_Id,Student_FirstName, trim(Student_FirstName)
							Student_LastNAme
						from tbl_Student
						Where Trim(Student_FirstName) like 't%'

				Rtrim :
					Rtrim remove whitespace only from the right side.

					-- Sytntax :
						Select Rtrim(expression) from tbl_name

					-- Example :
						Select ' Hello World ' -- Hello World 

						Select Rtrim(' Hello World ') -- Hello World

						Select Student_Id,Student_FirstName, Rtrim(Student_FirstName)
							Student_LastNAme
						from tbl_Student
						Where RTrim(Student_FirstName) like 't%'

				Ltrim :
					Remove whitespace from left side only.

					-- Syntax :
						Select Ltrim(expression) from tbl_name

					-- Example :
						Select ' Hello World ' -- Hello World 

						Select Ltrim(' Hello World ') --Hello World 

						Select Student_Id,Student_FirstName, Ltrim(Student_FirstName)
							Student_LastNAme
						from tbl_Student
						Where LTrim(Student_FirstName) like 't%' --Tanmay  

				Left :
					Left function extract no of char given by the user.
					Left function always extract value from left to right and it is always start
						with the index 1.

					-- Syntax :
						Select Left(expression,count_of_char) from tbl_name

					-- Example :	
						Select Left('Hello World',3)

						Select Left(Trim(Student_Firstname),3) from tbl_Student

						Select Trim(Left(Student_Firstname,3)) from tbl_Student



				Right :
					Right function extract no of char given by the user.
					Right function always extract value from right to left 
						and it is always start with the negative index.

					-- Syntax :
						Select Right(expression,count_of_char) from tbl_name

					-- Example :
						Select Right('Hello World',3)

						Select Right(Trim(Student_Firstname),50) from tbl_Student

						Select Trim(Left(Student_Firstname,3)) from tbl_Student

				Substring :
					Substring function use to extract value from string from any index.
					We can extract no of character from string.

					-- Syntax :
						Select Substring(expression,Start_index,count_of_char) from tbl_name

					-- Example :
						Select Substring('Hello World',3,6) --llo Wo

						H -1
						E - 2
						L - 3
						L - 4
						O - 5
						Space - 6
						W - 7
						O - 8
						R - 9
						L - 10
						D - 11

						Select Substring('Hello World',3,20)

						Select Student_FirstName,
							Substring(Student_FirstName,3,5)
						from tbl_Student

		Date Function :
			When we need to extract a particular value from date and time and 
				with that if i want to find the diff from dates.

			-- Types Of Date function :
				Getdate() :
					Getdate retuen current date and time of the system where my
						SQL is installed.

					-- Syntax :
						Select getdate()

					-- Example :
						Select getdate() -- 2026-04-18 11:37:16.770

						Select * from tbl_STudent

						Alter table tbl_STudent
						Add Inserted_Date datetime

						Alter table tbl_STudent
						Add Modified_Date datetime

						Update tbl_Student Set
							Student_MobileNo = 1234567,
							Modified_Date = getdate()
						Where Student_Id = 2

				GetUTCDate() :
					UTC is present as Coordinated Universal Time.
					This is common across all the region or all the countries.
					When our application runnin on multiple region we need to use
						getutcdate function.

					-- Syntax :
						Select getutcdate()

					-- Example :
						Select getutcdate()

						Select getdate()

				Month
				Day
				Year
				DateDiff
				IsDate
				Datename
				Datepart