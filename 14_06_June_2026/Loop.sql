Loop :
	Loop run the iteration until the condition false.
	We can run the same code or different code through the loop.
	Incremental number is always required to stop or fulfill the condition.

	-- Syntax :
		while condition
		Begin
			-- SQl statement

			-- Incremental Number
		End

	-- Example :
		While 5 > 1
		Begin
			print('1')
		End

		Declare @val1 int = 1

		While 5 > @val1
		Begin
			print(@val1)

			Set @val1 = @val1 + 1
		End