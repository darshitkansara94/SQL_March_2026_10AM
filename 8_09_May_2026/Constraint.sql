Constraint :
	Constraint use to create a policy on table.

	-- Types of constraint :
		Primary Key :
			Primary key allow us to store a unique value and we can not store null value.
			We can have only one PK per table.
			Duplicate value is not allow in PK column.

			-- Syntax :
				-- Create table
					Create table tbl_name
					(
						column_name datatype primary key,
						column_name datatype,
						.
						.
						column_name datatype
					)

			-- Example :
				Create table tbl_Student
				(
					Student_Id int primary key,
					Student_Name nvarchar(20),
					Student_Age int,
					Student_DOB datetime
				)

				-- With existing table
				Alter table tbl_Marks
				Add constraint cn_PK_Marks primary key(Id)

				Select * from tbl_Student

				Insert into tbl_Student(Student_Id,Student_Name,Student_Age,Student_DOB)
				values(2,'Darshit',25,'2026-05-09 11:21:16.860')
			
		Identity Key :
			Identity key allow to insert a incremental value for the column.
			When we assign identity key to any column then sql will handle the value for that
				column. 
			If any record is removed in between then identity key will not fill that gap. instead
				it will take max value and increment by that number.

			-- Syntax :
				-- Create table
				Create table tbl_name
					(
						column_name datatype primary key identity(start_number,increment_by),
						column_name datatype,
						.
						.
						column_name datatype
					)

			-- Example :
				Create table tbl_Student
				(
					Student_Id int primary key identity(1,1),
					Student_Name nvarchar(20),
					Student_Age int,
					Student_DOB datetime
				)

				Insert into tbl_Student(Student_Name,Student_Age,Student_DOB)
				values('Darshit',25,'2026-05-09 11:21:16.860')

				Select * from tbl_Student


		Foreign Key :
		Default :
		Unique :
		Check :
		Null : 
		Not Null :