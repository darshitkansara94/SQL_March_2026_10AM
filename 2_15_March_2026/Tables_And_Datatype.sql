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

-- Datatype :
	Datatype is we are restricting user to save information in particular
		format.
	We have multiple types of datatype :
	
	-- Types of Datatype:
		-- String :
			String is  collection of alphabets or numbers or
				special characters.
			We have a combinatio of any any of three or any single.
			String always written inside single quote('').
				Ex : 'abc123@','123','123@','abc@'.

			-- varchar :
				varchar datatype use to store a string data.
				varchar is single scripted language. Which means it 
					allows only english language.
				At the time of using this datatype we need to assign
					lengh in the round braces with numbers.

				-- Syntax :
					varchar(length)

				-- Example :
					varchar(13)

			-- nvarchar :
				nvarchar is similar to varchar datatype.
				But the difference is nvarchar support multi scripted 
					language. That means we can save data  in different
					language in nvarchar.
				If we are storing data in any other language apart from english
					we need  to mention N before value.
					Ex : N'value'

				-- Syntax :
					nvarchar(length)

				-- Example :
					nvarchar(13)

			-- char :
				It is similar to varchar and nvarchar.
				We need to decide a length of the datatype.
				And at the time of storing value it will consume all the length
					mentioned by developer.

				-- Syntax :
					char(length)

				-- Example :
					char(6)

					'abc' = 'abc' -- varchar(6)
							'abc' -- nvarchar(6)
							'abc 12'
							'a     '

		-- Number :
				Store a value with 0-9 numbers.
				We do not need to write number in single quote.

				-- Types of numbers
					int :
						int store number type of values. 
						We do not need to specify length for int.
						It support only 7-8 char of numbers.

						-- Syntax :
							int

						-- Example :
							int

					bigint :
						It is similar to int type of datatype.
						But the difference is it will store more characters than int.

						-- Syntax :
							bigint

						-- Example :
							bigint

							-- 30 * 85000 = 2550000

					decimal :
						We have a value with point.
						We need to define this value with the single quote.

						-- Syntax :
							decimal(total_length,value_after_point)

							total_length : Total lenght of the char including
								point value.
							value_after_point : How many char we need to 
								display after point.

						-- Example :
							decimal(10,2) -- 253.23
							decimal(18,3) -- 253.231

		-- Date and time :
			When we need to store date and time with sql type of format.

			-- Types of date and time
				datetime :
					When we need to store date and time.

					-- Syntax :
						datetime

					-- Example :
						datetime

				date :
					Allow us to store only date.

					-- Syntax :
						date

					-- Example :
						date

				time:
					Allow us to store only time.

					-- Syntax :
						time

					-- Example :
						time

		-- bit :
			Bit store only binary numbers which are 0 and 1 only.

			-- Syntax :
				bit

			-- Example :
				bit


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

	-- Example :
		use Weltech_DB

		Create table tbl_Student
		(
			Student_Id int,
			Student_FirstName varchar(13),
			Student_LastName varchar(15),
			Student_EmailId varchar(25),
			Student_DOB date,
			Student_MobileNo bigint,
			Student_Address varchar(55)
		)