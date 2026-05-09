Conditions :
	Condition allow us to execute code based on expression output.

	-- Types of condition :
		If..Else :
			If else condition allow us to execute code based on expression.
			The expression always return true and false.
			The code execution is decide by expression output.
			If expression output is true then If block is executed.
			If expression output is false then else block get execute.
			In this condition always one block of code got execute which is
				either if or else.

			-- Syntax :
				If (expression)
				Begin
					-- SQL Statement
				End
				Else
				Begin
					-- SQL Statement
				End

			-- Example :
				If (4 > 5) -- false
				Begin
					print('4 is greater than 5')
				End
				Else
				Begin
					print('4 is not greater than 5')
				End

				If (4 < 5) -- true
				Begin
					print('4 is greater than 5')
				End
				Else
				Begin
					print('4 is not greater than 5')
				End

				Declare @Val1 int
				Declare @Val2 int

				Set @Val1 = 30
				Set @Val2 = 36

				If (@Val1 < @Val2)
				Begin
					print(Concat_ws(' ',@val1 ,'is greater than', @val2))
				End
				Else
				Begin
					print(concat_ws(' ' ,@val1 ,'is not greater than' ,@val2))
				End

				-- Exists :
				Select * from tbl_Student

				Select Trim(Student_FirstName) from tbl_Student		
					Where Trim(Student_FirstName)  = 'Tanmay1'

				If exists (Select Student_FirstName from tbl_Student		
					Where Trim(Student_FirstName) = 'Tanmay1')
				Begin
					Update tbl_Student set
						Student_EmailId = 'tanmay@gmail.com'
					Where Trim(Student_FirstName) = 'Tanmay'

					Print('Value is present')
				End
				Else
				Begin
					Insert into tbl_Student(Student_Id,Student_FirstName,Student_LastName)
					values(8,'Tanmay1','Rana')

					Print('Value is not present')
				End

				---------------------------------------------------------------
				Declare @FirstName nvarchar(15) = 'Tanmay'
				Declare @LastName nvarchar(15) = 'Parikh'
				Declare @EmailId nvarchar(20) = 'parikh@gmail.com'

				If exists (Select Student_FirstName from tbl_Student		
					Where Trim(Student_FirstName) = @FirstName And 
					Trim(Student_LastName) = @LastName)
				Begin
					Update tbl_Student set
						Student_EmailId = @EmailId
					Where Trim(Student_FirstName) = @FirstName And 
					Trim(Student_LastName) = @LastName

					Print('Value is present')
				End
				Else
				Begin
					-- Max operator
					Declare @StudentId int
					Select @StudentId = max(Student_Id) + 1 from tbl_Student

					Insert into tbl_Student(Student_Id,Student_FirstName,Student_LastName)
					values(@StudentId,@FirstName,@LastName)

					Print('Value is not present')
				End


		If..Else If..Else :
			This is extended version of If..Else.
			Difference between If else and this condition is we can write a multiple
				conditions. Where in If..else we can check only one condition and based on  that
				If and else block get execute.

			-- Syntax :
				If (expression)
				Begin
					-- SQL Statement
				End
				Else if (expression)
				Begin
					-- SQL Statement
				End
				Else If (expression)
				Begin
					-- SQL Statement
				End
				.
				.
				.
				.
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				Declare @val1 int = 30 
				Declare @val2 int = 10

				If(@Val1 > @Val2)
				Begin
					Print(concat_ws(' ',@val1,'is greater than', @val2))
				End
				Else If (@Val1 < @Val2)
				Begin
					print(concat_ws(' ',@val1,'is less than',@val2))
				End
				Else
				Begin
					print('Both values are equal')
				End

				---------------------------------------------------------
				-- Check Grades
					-- if Greater than 280 = 'Grade A'
					-- If between 240 and 279 = 'Grade B'
					-- If between 200 and 239 = 'Grade C'
					-- If between 150 and 199 = 'Grade D'
					-- If between 100 and 149 = 'Grade E'
					-- Else = 'Grade F'

					Declare @Marks int= 35

					If (@Marks between 280 And 300)
					Begin
						Print('Grade A')
					End
					Else If(@Marks between 240 And 279)
					Begin
						Print('Grade B')
					End
					Else If(@Marks between 200 And 239)
					Begin
						Print('Grade C')
					End
					Else If(@Marks between 150 And 199)
					Begin
						Print('Grade D')
					End
					Else If(@Marks between 100 And 149)
					Begin
						Print('Garde E')
					End
					Else If(@Marks between 0 And 99)
					Begin
						Print('Grade F')
					End
					Else
					Begin
						Print('Absent')
					End
					-----------------------------------------------------------------
					Declare @Marks int= 240

					If (@Marks > 280)
					Begin
						Print('Grade A')
					End
					Else If(@Marks >= 240 And @Marks <= 279)
					Begin
						Print('Grade B')
					End
					Else If(@Marks >= 200 And @Marks <= 239)
					Begin
						Print('Grade C')
					End
					Else If(@Marks >= 150 And @Marks <= 199)
					Begin
						Print('Grade D')
					End
					Else If(@Marks >= 100 And @Marks <= 149)
					Begin
						Print('Garde E')
					End
					Else If(@Marks >= 0 And @Marks <= 99)
					Begin
						Print('Grade F')
					End
					Else
					Begin
						Print('Absent')
					End


		Switch case / case condition :
			Working scenerio of case condition is similar to if..else and if..else if..else.
			But here we can use this condition inside select statement which is drawback of 
				if..else and if..else if..else.
			We have a single syntax for single and multiple condition.
			Compare to if..else and if..else if..else, Case condition is better in performance.

			-- Syntax :
				--For single condition
				Select case
					When expression Then 'Output'
					Else 'Output' End as alisa_name
				from tbl_name

				--For multiple condition
				Select case
					When expression Then 'Output'
					When expression Then 'Output'
					.
					.
					Else 'output' End  as alias_name
				from tbl_name

				-- Example :
					Select Case 
						When 6 > 5 Then '6 is greater than 5'
						Else '6 is not greater than 5' End as Value_Compare

					--------------------------------------------------------
					-- if Greater than 280 = 'Grade A'
					-- If between 240 and 279 = 'Grade B'
					-- If between 200 and 239 = 'Grade C'
					-- If between 150 and 199 = 'Grade D'
					-- If between 100 and 149 = 'Grade E'
					-- Else = 'Grade F'

					Declare @Marks int = 279

					Select Case
						When @Marks between 280 And 300 Then 'Grade A'
						When @Marks between 240 And 279 Then 'Grade B'
						When @Marks between 200 And 239 Then 'Grade C'
						When @Marks between 150 And 199 Then 'Grade D'
						When @Marks between 100 And 149 Then 'Grade E'
						Else 'Grade F' End as Grade

					Select * from tbl_StudentDetails

					Select 
						Student_Detail_Subject,Student_Detail_Marks,
						Case
							When Student_Detail_Marks between 80 And 90 Then 'Grade A'
							When Student_Detail_Marks between 50 And 79 Then 'Grade B'
							When Student_Detail_Marks between 35 And 49 Then 'Grade C'
							Else 'Grade F' End as Grade
					from tbl_StudentDetails

					Select Name,Sum(Marks) as Total_Marks from tbl_Marks
					Group by Name

					Select Name,Sum(Marks) as Total_Marks,
					Case
						When Sum(Marks) between 280 And 300 Then 'Grade A'
							When Sum(Marks) between 240 And 279 Then 'Grade B'
							When Sum(Marks) between 200 And 239 Then 'Grade C'
							When Sum(Marks) between 150 And 199 Then 'Grade D'
							When Sum(Marks) between 100 And 149 Then 'Grade E'
							Else 'Grade F' End as Grade
					from tbl_Marks
					Group by Name

