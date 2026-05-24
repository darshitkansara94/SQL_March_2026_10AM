Error Handling :
	Error handling use to handle runtime errors for SQL statement.
	While we execute any sql statement and until we get a o/p this time is 
		consider as a runtime.
	By using error handling user can display custom message instead of sql
		inbuilt error messages.
	Try block execute everytime. and we will write actual logic / SQL statement
		inside try block.
	If any error occure during execution of SQL statement inside try block then 
		that error is handle by the catch block.

	-- Syntax :
		Begin try
			-- SQL statement
		end try
		Begin catch
			-- Error Handling
		End catch

	-- Example :
		Begin try
			Select 10 / 2 as Division
		End try
		Begin catch
			print('Error in statement')
		End catch
		----------------------------------------
		Begin try
			Select 10 / 0 as Division

			print('This is try block')
		End try
		Begin catch
			print('Error in statement')
		End catch
		---------------------------------------------
		Begin try
			Select tbl_Category.Category_Name,sc.Subcategory_Name,sc.Subcategory_Price,
			sc.Subcategory_Qty as Inital_Qty,
			tbl_Order.Order_Qty,
			sc.Subcategory_Qty - tbl_Order.Order_Qty as Remain_Qty,
			Convert(nvarchar(20),tbl_Order.Order_Date,106) as Order_Date,
			sc.Subcategory_Price * tbl_Order.Order_Qty as Total_Order_Price
			from tbl_SubCategory as sc
			Inner join tbl_Order on
				sc.Subcategory_Id = tbl_Order.Subcategory_Id
			Inner Join tbl_Category on
				tbl_Category.Category_Id = tbl_order.Category_Id
		End try
		Begin catch
			print('Error in statement')
		End catch