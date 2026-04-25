Group By :
	Group by clause use to merge duplicate row value into single value or merge same value 
		into group.
	If we have a unique value in the rows then group by does not group the values but
		still we can use group by clause.
	We can use group by clause with or without aggregate function. But ideally in real 
		scenerio group by always use with Agrregarte functions.

	-- Syntax :
		Select column_name,column_name, aggregate_column from tbl_name
		Group by column_name,column_name

	-- Example :
		Create table tbl_Marks
		(
			ID int,
			Name varchar(10),
			Subject varchar(12),
			Marks decimal(10,2)
		)

	insert into tbl_marks (id, name,subject, marks)
	values (1,'darshit','maths',45), (2,'darshit','ss', 48), (3, 'darshit', 'science',43),
	(4,'mithil', 'maths',37), (5,'mithil', 'ss', 41), (6, 'mithil', 'science', 49)

	Select Id,Name,Subject,Marks from tbl_Marks

	Select Name,Sum(Marks) as Total_Marks
		from tbl_Marks
	Group by Name

	Select Name,Subject,Sum(Marks) as Total_Marks 
		from tbl_Marks
	Group by Name,Subject

	Select Name,Subject,Sum(Marks) as Total_Marks 
		from tbl_Marks
	Where Name = 'Mithil'
	Group by Name,Subject

	Select Name,Sum(Marks) as Total_Marks
		from tbl_Marks
	Where Name in ('Mithil','darshit')
	Group by Name
	Order by Name desc
