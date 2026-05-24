Store Procedure :
	Store procedure is a predefined template where we can write a SQL statement
		like insert, Udpdate, Delete or select.
	By using SP we can avoid code duplicacy and we can use the same code
		multiple time.
	We can not create a same SP with the same name in a same DB.
	Store procedure name star with prefix 'sp_'.

	-- Parameters :
		Parameter use to store a value and use that value inside SP.
		Paameter always declare with the prefix '@'.
		Every param is bound with some datatype.

		-- Syntax :
			@param_name datatype

	-- Syntax :
		-- Default SP :
			Create procedure sp_name
			As
			Begin
				-- SQL Statement
			End

		-- Parameterizd SP :
			Create procedure sp_name
			(
				-- Parameters
			)
			As
			Begin
				-- SQL Statement
			End

	-- Example :
		Exec sp_SelectCategory

		Exec sp_SelectCategory

		Exec sp_SelectCategory

		Select * from tbl_Category Where Category_Id = 1

		Exec sp_SelectCategoryById 2