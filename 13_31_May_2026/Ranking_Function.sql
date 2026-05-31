Ranking function :
	Ranking function are give rank to the every row in the table.
	This rank can be in a sequence or in duplicate sequence number.

	-- Types of Ranking function :
		-- Row_number() :
			Row number provide a sequencial number to the data.
			Row_number always make sure that sequence of number is always maintain.

			-- Syntax :
				Select Row_number() over(order by column_name desc/asc) 
				from tbl_name

			-- Example  :
				Select Row_number() over(order by Student_FirstName desc) as SrNo, 
				Student_Id,Student_FirstName,Student_LastName
				from tbl_StudentMaster	
				
				Delete from tbl_StudentMaster where student_id  = 4

		-- Dense_Rank() :
			Dense_rank function use to provide a same sequential number to the
				duplicate records.

			-- Syntax :
				Select dense_rank() over(order by column_name asc/desc)
				from tbl_name

			-- Example :
				Select dense_rank() over(order by Student_FirstName) as SrNo,
				Student_Id,Student_FirstName,Student_LastName 
				from tbl_StudentMaster

				Select * from tbl_StudentMaster

				Insert into tbl_StudentMaster(Student_FirstName,Student_LastName)
				values('Zuber','xyz')
