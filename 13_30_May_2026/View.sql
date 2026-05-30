View :
	View is a virtual table which is stored in  memory.
	We can not add or modify column and column properties in this table.
	This is store as a query in database and as a table in memory.
	When we need to write a same SQL statement multiple times then we can create a view which allow us to 
		use that statement in SP and connect / join with other tables.

	-- Syntax :
		Create view vw_name as
		Select * from tbl_name

	-- Example :
		Alter view vw_Employee as
		Select Employee_Id,Employee_Name,Employee_Age from tbl_Employee

		Select * from tbl_Employee

		Select * from vw_Employee
		Where Employee_Id = 5

		-- With join
		Select * from tbl_Category
		Select * from tbl_Subcategory

		Create view vw_CategorySubcategory as
		Select Category_Name,Subcategory_Name,Subcategory_Price,Subcategory_Qty from tbl_Category
		Inner join tbl_SubCategory On
			tbl_Category.Category_Id = tbl_SubCategory.Category_Id

		Select * from vw_CategorySubcategory

		Insert into tbl_category(Category_Name)
		values('Watch')

		Insert into tbl_Subcategory(Category_Id,Subcategory_Name,SubCategory_Price,Subcategory_Qty)
		values(1,'Lenovo',50000,2)