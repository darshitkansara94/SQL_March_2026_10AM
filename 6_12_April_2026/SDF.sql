2. String function
	String function is use to manipulate string or if we want to do any opearation on
		string value.

	-- Types of string function
		len() :
			To identify the length od srtring.

			-- Syntax :
				len(expression)

			-- Example :
				Select LEN('Hello world')

				Select LEN('Hello world ')

				Select LEN(' Hello world')

		concat :
			Merge n no of words into single string.

			-- Syntax :
				concat(expression1,expression2,...,expressionN)

			-- Example :
				Select concat('Hello','world')

				Select concat('Hello world',' ','Weltec')

		concat with + :
			Concat string using +.

			--- Syntax :
				'Hello' + 'World'

			-- Example :
				Select 'Hello'+ ' ' + 'World'

		concat_ws :
			Use to concat two or more words into single string.
			WS stand for with seperator.

			-- Syntax :
				Concat_Ws(seperator,expression1,expression2,...,expressionN)

			-- Example :
				Select concat_ws('-','Hello','World')

				Select concat_ws('-','Hello World','Weltec SQL')

				-- 123-456 789

				concat_ws('-',column1,concat_ws(' ',column2,column3))


				Select * from tbl_StudentMaster

				Select Concat_Ws('-',Student_Name,Student_Email) as NameEmail
				from tbl_StudentMaster

		trim() :
			To avoid whitespace from the string we can use trim function.
			It will remove space from starting and ending of the string.
			Whitespace :
				Any extra space at the starting and ending of the string 
					is consider as whitespace.

			-- Syntax :
				trim(expression)

			-- Example :
				Select ' Hello world ' -- Hello world 
				Select trim(' Hello world ') --Hello world

				Select trim(' Hello World') --Hello World

		rtrim() :
			Remove whitespace from ending of the string or right side of the string.

			-- Syntax :
				Rtrim(expression)

			-- Example :
				Select ' Hello world '
				Select rtrim(' Hello world ') -- Hello world				

		ltrim() :
			Remove whitespace from starting of the string or left side of the string.

			-- Syntax :
				ltrim(expression)

			-- Example :
				Select ' Hello world ' -- Hello world 
				Select ltrim(' Hello world ') -- Hello world 

		reverse :
			Reverse function display string in reverse order.

			-- Syntax :
				reverse(expression)

			-- Example :
				Select reverse('Hello World')

		substring() :
			Substring extract char from the string value.
			It has starting point and count of char that we need to extract.
			Index is always start from 1.

			-- Syntax :
				substring(expression,starting_index,count)

			-- Example :
				Select Substring('Hello World',1,3)

				Select Substring('Hello World ',10,3)

		Replace :
			Replace string or char into existing string value.

			-- Syntax :
				replace(expression,old_value,new_value)

			-- Example :
				Select replace('Hello World','l','e')

				Select replace('Hello World','d','Weltec')

		charindex :
			charindex use to identify the index of the char from string.
			It will retyrn first char index found in string.

			-- Syntax :
				charindex(char,expression)

			-- Example :
				Select charindex('a','Today is a sunday')

				Select charindex('is','Today is a sunday')

		upper :
			It will return string in upper case.

			-- Syntax :
				upper(expression)

			-- Example :
				Select upper('Today is a Sunday')

		lower :
			It will retune string in lower case.

			-- Syntax :
				lower(expression)

			-- Example :
				Select lower('Today is a Sunday')

3. Date function :
	Date function extract value or we can perform some operation on the date.
	it will work with datetime datatype.

	-- Types of date function :
		sysdatetime :
			Return your system date and time

			-- Syntax :
				sysdatetime()

			-- Example :
				Select sysdatetime()

		sysutcdatetime :
			UTC is Universal date and time.
			It will return UTC time which is not depend on any country or location

			-- Synatx :
				sysutcdatetime()

			-- Example :
				Select sysutcdatetime()

		getdate :
			Return date and time, But it will return date and time of the system
				where our SQL / Our database is located.

			-- Syntax :
				getdate()

			-- Example :
				Select getdate()

		getutcdate :
			It will return universal date and time.
			Compare to sysutcdatetime it will return more accurate result.

			-- Syntax :
				getutcdate()

			-- Example :
				Select getutcdate()

		month
			It will return only month from date

			-- Syntax :
				month(date)

			-- Example :
				Select month(getdate())

		day :
			Return current date only.

			-- Syntax :
				day(date)

			-- Example :
				Select day(getdate())

				Select day('2025-10-14 10:27:05.120')

				Select getdate() + 2

		year :
			Return year only from date and time

			-- Syntax :
				Year(date)

			-- Example :
				select year(getdate())

		datename :
			Datename return a value as a string.
			We can use a sub function to get a value using datename function.

			-- Example :
				Select datename(day,getdate()) as current_day
				Select datename(month,getdate()) as current_month
				Select datename(year,getdate()) as current_year

				Select datename(DAYOFYEAR,getdate()) as Day_Of_Year
				Select datename(QUARTER,getdate()) as current_Quater
				Select datename(WEEKDAY,getdate()) as current_Weekday
				Select DATENAME(WEEK,GETDATE()) as current_week

				Select DATENAME(hour,GETDATE()) as current_hour
				Select datename(MINUTE,GETDATE()) as current_minute
				Select datename(SECOND,GETDATE()) as current_second
				Select datename(MILLISECOND,GETDATE()) as current_milisecond

				Select DATENAME(ISO_WEEK,GETDATE()) as current_ISO_Week

		datepart :
			This function is similar to the datename function but only the difference is 
				th output of this function is in int type.

			-- Example :
				Select datepart(day,getdate()) as current_day
				Select datepart(month,getdate()) as current_month
				Select datepart(year,getdate()) as current_year
				Select datepart(DAYOFYEAR,getdate()) as Day_Of_Year
				Select datepart(QUARTER,getdate()) as current_Quater
				Select datepart(WEEKDAY,getdate()) as current_Weekday
				Select datepart(WEEK,GETDATE()) as current_week
				Select datepart(hour,GETDATE()) as current_hour
				Select datepart(MINUTE,GETDATE()) as current_minute
				Select datepart(SECOND,GETDATE()) as current_second
				Select datepart(MILLISECOND,GETDATE()) as current_milisecond
				Select datepart(ISO_WEEK,GETDATE()) as current_ISO_Week
				
		isdate :
			IsDate function validate date is valid format or given date is valid or not.
			Output is either 0 or 1, If date is valid then o/p is 1 else 0.

			-- Syntax :
				isdate(date)

			-- Example :
				Select isdate(getdate())

				Select getdate()

				Select isdate('2025-11-31 11:03:20.837')
				
		
