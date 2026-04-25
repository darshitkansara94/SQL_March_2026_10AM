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
					



		If..Else If..Else
		Switch case / case condition		