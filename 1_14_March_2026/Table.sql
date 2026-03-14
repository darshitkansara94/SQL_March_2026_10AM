Table :
	Table is collection of rows and column.
	Our data is store in a table in a form of rows.
	We can not create a duplicate table with the same name in the same DB.
	Space is not allowed in table name.
	Table name should not start with special char / numbers.
	table name should start with prefix 'tbl_'.
	Table always store in the folder table with in that DB.

	-- Columns :
		Column use to store a value.
		Column name can not be duplicate with in same table.
		Column name should not start with special char or number.
		Space is not allowed. If required to sperate words then use
			underscore.
		Column name should always start with the table name.


	-- Syntax :
		Create table tbl_name
		(
			column_name datatype,
			column_name datatype,
			column_name datatype,
			.
			.
			.
			column_name datatype
		)