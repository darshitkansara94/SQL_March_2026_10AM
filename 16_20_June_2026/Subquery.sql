Subquery :
	Subquery is about one query inside another query.
	The execution of subquery is different from other execution.
	First inner query is execute and when we got a o/p of inner query then
		outer query get execute.

	-- Syntax :
		Select column_name,column_name from tbl_name
		Where column_name = (
			Select column_name from tbl_name
		)

	-- Example :
		Select * from tbl_StudentMaster
		
		Create table tbl_StudentAttandance
		(
			Attandance_Id int primary key identity(1,1),
			Student_Id int,
			Attandance_Date datetime,

			Constraint cn_fk_Student_Id foreign key (Student_Id)
			references tbl_StudentMaster(Student_Id)
		)
		
		Select * from tbl_StudentMaster
		Select * from tbl_StudentAttandance

		Insert into tbl_StudentAttandance(Student_Id,Attandance_Date)
		values(2,GETDATE()- 1),(5,GETDATE())

		Select * from tbl_StudentMaster
		Where Student_Id not in (
			Select Student_Id from tbl_StudentAttandance
			Where cast(Attandance_Date as date) = cast (GETDATE() as date)
		)


Select Student_Id from tbl_StudentAttandance
			Where cast(Attandance_Date as date) = cast (GETDATE() as date)