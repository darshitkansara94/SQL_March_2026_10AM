Having Clause:
	Having is sililar to the Where clause.
	The difference is having clase allow user to use aggregate function in condition.
	While Where clause does not allow to use aggregate function in condition.

	-- Syntax :
		Select * from tbl_name
		Having aggregate_function(column_name) = expression

	-- Example :
		Select * from tbl_Marks

		Select Name,Sum(Marks) as Total_Marks from tbl_Marks
		Group by Name
		having sum(Marks) < 130	And Name = 'Mithil'	

		Select Name,Sum(Marks) as Total_Marks from tbl_Marks
		Group by Name
		having sum(Marks) > 130	Or Name = 'Mithil'	

		Select * from tbl_Marks

		Select Name,Subject,Sum(Marks) as Total_Marks from tbl_Marks
		Group by Name,Subject
		having sum(Marks) > 30	And Subject = 'Maths'	
		Order by Name desc