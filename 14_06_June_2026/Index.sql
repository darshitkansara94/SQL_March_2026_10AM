Index :
	Index is use to make retrieval process faster.
	Using more index on single table can slow down insert, update and delete
		execution.
	We can create a multiple index on single table.

	-- Types of Index :
		-- Clustered index :
			Clustered index always associate with PK.
			So we can create only one clustered index per table.
			When we create a table with a PK SQL automatically creates
				clustered index.

			-- Syntax :
				Create clustered index idx_name on
				tbl_name(column_name)

			-- Example :
				Create clustered index idx_Student on
				tbl_Student(Student_Name)

				Select * from tbl_Student

		-- Non-clustered index :
			We can create multiple Non-clustered on single table.
			This type of index can be applied on column which is use in	
				Where clause.
			But creating more index can slow down the Insert, Update and Delete.

			-- Syntax :
				Create nonclustered index idx_name on
				tbl_name(column_name)

			-- Example :
				Create nonclustered index idx_StudentName
				on tbl_Student(Student_Name)

			-- Type of Non-clustered index :
				-- Unique index :
					Unique index allow us to store a unique value for the column
					And alos it will create an index so with unique value
						We can improve search performance.

					-- Syntax :
						Create unique nonclustered index idx_name on
						tbl_name(column_name)

					-- Example :	
						Select * from tbl_Student

						Create unique nonclustered index idx_StudentNameUnique
						on tbl_Student(Student_Name,Student_Address)

						

						with cte_Studentname as
						(
							Select 
								Student_Name,Student_Address,
								ROW_NUMBER() over(partition by Student_Name
									order by Student_name desc) as srno
							from tbl_Student
						)

						delete from cte_Studentname
						Where srno > 1

						Select * from tbl_Student

						Insert into tbl_Student(Student_Name,Student_Age,Student_Address)
						values('Vineetha',26,'Ahmedabad')

						
				-- Filtered index :
					Filter index allow us to filter a record and based on that 
						it will save data.

					-- Syntax :
						Create unique nonclustered index idx_name
						on tbl_name(column_name)
						Where column_name = expression

					-- Example :
						Create unique nonclustered index idx_Age1
						On tbl_Student(Student_Name)
						Where Student_Age >= 18

						Create table tbl_Employee
						(
							Employee_Id int primary key identity(1,1),
							Employee_Name nvarchar(20),
							Employee_Age int,
							IsDeleted bit
						)

						Insert into tbl_Employee(Employee_Name,Employee_Age,IsDeleted)
						values('Varsha',24,1)

						Select * from tbl_Employee
						Where IsDeleted = 1

						Create unique nonclustered index idx_EmployeeName
						on tbl_Employee(Employee_Name)
						Where IsDeleted = 1

						Insert into tbl_Employee(Employee_Name,Employee_Age,IsDeleted)
						values('Jay',25,1)

						Update tbl_Employee set
							IsDeleted = 0
						Where Employee_Id =6



						


