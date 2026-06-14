User Defined Functions :
	User defined function is created by the user and we can use it in multiple SQL 
		statement.
	This function can be use within the same DB we can not use this outside that particular
		database.
	We can not create a function with the same name in a single DB.
	Function is use to avoid code duplicacy and we can reuse the same code multiple time
		within the same DB.

	-- Types of function :
		-- Scalar valued function :
			Scalar valued function retrun a single value only.
			That means we can return a any value with the single datatype.

			-- Syntax :
				Create function fn_name
				(
					-- Parameters
				)
				Returns datatype
				As
					Return (-- SQL statement)
				Begin

				-- How to execute this function?
				Select dbo.fn_name() as alias_name

			-- Example :
				Select dbo.fn_Addition(1,1) as Addition

				Select * from tbl_StudentDetail

				Select * from tbl_Sales

				Select  
				Sales_Price,Sales_Qty,
				dbo.fn_Multiplication(Sales_Price,Sales_Qty) as Total_Price,
				Product_Name
				from tbl_Sales

				Select GETDATE()
				Select convert(nvarchar(20),GETDATE(),107)
				Select convert(nvarchar(20),GETDATE(),107)
				Select convert(nvarchar(20),GETDATE(),107)

				Select dbo.fn_ConvertDateFormat(getdate())
				Select dbo.fn_ConvertDateFormat(getdate())
				Select dbo.fn_ConvertDateFormat(getdate())

				Select Student_Name,
					dbo.fn_ConvertDateFormat(Student_DOB) as Student_DOB
				from tbl_Student

		-- Table valued function :
			Table valued function return a atable as a output.

			-- Syntax :
				Create function fn_name
				(
					-- Parameter
				)
				Returns Table
				As
					return (-- SQL Statement)

			-- Example :
				Select * from tbl_StaffMaster
				Select * from tbl_Class
				Select * from tbl_Student

				Select SM.Staff_FirstName,SM.Staff_LastName,SM.Staff_Age,
				CS.Class_Name,CS.Class_Standard,ST.Student_Name,ST.Student_Age,
				ST.Student_DOB
				from tbl_StaffMaster as SM
				Inner join tbl_Class as CS on
					SM.Staff_Id = CS.Staff_Id
				Inner Join tbl_Student as ST on
					ST.Class_Id = CS.Class_Id

				Select CS.Class_Name,CS.Class_Standard,
				CS.Full_Name,
				ST.Student_Name,ST.Student_Age,
				ST.Student_DOB
				from dbo.fn_ClasAndStaffMaster() as CS
				Inner join tbl_Student as ST On
					CS.Class_Id = ST.Class_Id

	-- Remove function :
		Delete a function from database.
		We can not recover function once function got deleted.

		-- Syntax :
			Drop function dbo.fn_name

		-- Example :
			Drop function [dbo].[fn_ConvertDate]				