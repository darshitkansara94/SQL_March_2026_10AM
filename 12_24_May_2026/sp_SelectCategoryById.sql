Create procedure sp_SelectCategoryById
(
	@CategoryId int -- 2
)
As
Begin
	Select * from tbl_Category Where Category_Id = @CategoryId

	-- Select * from tbl_Category Where Category_Id = 2
End