Merge :
	Merge function is use to perform insert, update and delete operation
		together and merge data between two tables.
	This function can perform all this three operation together based on data.

	-- Syntax :
		Merge into tbl_target as T
		using tbl_source as S
		on T.column_name = S.column_name

		When matched then
			Update set 
				T.column_name = S.column_name,
				T.column_name = S.column_name
		When not matched by Target then
			Insert (column_name,column_Name..)
			values(S.column_name,S.column_name..)
		When not matched by Source Then
			Delete;

	-- Example :
		Create a table with the name tbl_ProductTarget
		create a same table with same column and name is tbl_ProductSource

		Column will be :
			Product_Id
			Product_Name
			Product_Price

		Insert 3 records in both tables.

		Create table tbl_ProductTarget
		(
			Product_Id int primary key identity(1,1),
			Product_Name varchar(20),
			Product_Price decimal(15,2)
		)

		Create table tbl_ProductSource
		(
			Product_Id int primary key identity(1,1),
			Product_Name varchar(20),
			Product_Price decimal(15,2)
		)

		Insert into tbl_ProductSource(Product_Name, Product_Price)
		values ('Watch', 15000), ('Phone', 30000), ('TV', 55000)

		Select * from tbl_ProductTarget
		Select * from tbl_ProductSource

		Insert into tbl_ProductSource(Product_Name,Product_Price)
		values('AC',52000)

		Update tbl_ProductSource set 
			Product_Price = 50000
		Where Product_Id = 3

		Merge into tbl_ProductTarget as T
		using tbl_ProductSource as S
		On T.Product_Name = S.Product_Name

		When matched Then
			Update set T.Product_Name = S.Product_Name,
				T.Product_Price = S.Product_Price
		When not matched by Target Then
			Insert (Product_Name,Product_Price)
			values(S.Product_Name,S.Product_Price)
		When not matched by Source Then
			Delete;
