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


		Foreign Key / Reference Key :
			FK is primary key of parent table and reference key of child table.
			Fk present one to many relation.
			In child table, Reference key column has a null value and duplicate value too.

			-- Syntax :
				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype,
					column_name datatype,

					Constraint cn_name foreign key (column_of_child_table) references 
					parent_table(pk_column)
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name foreign key (column_of_child_table) references
				parent_table(pk_column)

			-- Example :
				use Weltech_db

				-- Parent Table
				Create table tbl_Student
				(
					Student_Id int primary key identity(1,1),
					Student_Name varchar(10),
					Student_Age int,
					Student_Address varchar(20)
				)

				-- Child Table
				Create table tbl_StudentDetail
				(
					Studentdetail_Id int primary key  identity(1,1),
					Student_Id int,
					Student_Subject varchar(10),
					Student_Marks int,

					Constraint cn_FK_Student_Id foreign key (Student_Id)
					references tbl_Student(Student_Id)
				)

				Insert into tbl_Student(Student_Name,Student_Age,Student_Address)
				values('Varsha',20,'Baroda')

				Select * from tbl_Student
				Select * from tbl_StudentDetail

				Insert into tbl_StudentDetail(Student_Subject,Student_Marks)
				values('SS',69),(2,'Science',89)

				Delete from tbl_Student

				Delete from tbl_StudentDetail

		Default :
			Default constraint allow user to add custom value when user is not passing
				any value for that column.
			We can have multiple default constaint in single table.

			-- Syntax :
				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype default expression,
					column_name datatype,
					column_name datatype,
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name default expression for column_name

			-- Example :
				Select * from tbl_StudentDetail

				Alter table tbl_StudentDetail
				Add constraint cn_StudentSubject default 'N/A' for Student_Subject	
				
				Alter table tbl_StudentDetail
				Add constraint cn_StudentMarks default 0 for Student_Marks	

				Insert into tbl_StudentDetail(Student_Id)
				values(2)

				Insert into tbl_StudentDetail(Student_Subject,Student_Marks)
				values('Maths',69)

		Unique :
			Unique constraint allow user to store unique value in column.
			We can apply unique constraint on multiple columns.
			We can have only one null value in unique constraint.

			-- Syntax :
				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype unique,
					column_name datatype,
					column_name datatype
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name unique(column_name)

			-- Example :
				Select * from tbl_Student

				Insert into tbl_STudent(Student_name,Student_Age,Student_Address)
				values('Varsha',25,'Baroda')

				Update tbl_Student set
					Student_Name = 'Varsha'
				Where Student_Id = 2


				Delete from tbl_Student where student_id = 3

				Alter table tbl_Student
				Add constraint cn_unique_StudentName unique(Student_Name)

		Check :
			Check constraint useto insert or update data based on condition.
			We can have multiple check constraint on single table.

			-- Syntax :
				-- Create table
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype check(condition),
					column_name datatype,
					column_name datatype,
				)

				-- Existing table
				Alter table tbl_name
				Add constraint cn_name check(condition)

			-- Example :
				Select * from tbl_Student

				insert into tbl_Student(Student_Name,Student_Age)
				values('Jay',17)

				Update tbl_Student Set
					Student_Age = 19
				Where Student_id = 6

				Alter table tbl_Student
				Add constraint cn_Check_StudentAge check(Student_Age > 18)

				Insert into tbl_Student(Student_Name,Student_Age)
				values('Sourav',19)

		Not Null :
			Not null allow user to forcefully insert a value for that column.
			It will create a column as a mandatory.

			-- Syntax :
				Alter table tbl_name
				Alter column column_name datatype not null

			-- Example :
				Alter table tbl_Student
				Alter column Student_Name nvarchar(20) not null

				Insert into tbl_Student(Student_Age)
				values(19)

		Null : 
			Null allow user to save null value in that column.
			It will make a column as a optional.

			-- Syntax :
				Alter table tbl_name
				Alter column column_name datatype null

			-- Example :
				Alter table tbl_Student
				Alter column Student_Name nvarchar(20) null

				Select * from tbl_Student

	-- How to remove constraint :
		Remove constraint from column / table.

		-- Syntax :
			Alter table tbl_name
			Drop constraint cn_name

		-- Example :
			Alter table tbl_Student
			Drop constraint cn_Check_StudentAge
			

-- Assignment :
	--Add column with 'Mobile No'
	-- Verify that if the char length is 10 then only allow user to save data
	--	if it is more than 10 or less than 10 then do not save data.

		