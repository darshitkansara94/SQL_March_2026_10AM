Alter procedure sp_InsertCategoryAndSubCategory
(
	@Category_Name nvarchar(20),
	@Category_Id int,
	@SubCategory_Name nvarchar(20),
	@Subcategory_Price decimal(10,2),
	@Subcategory_Qty int
)
As
Begin
	Insert into tbl_Category(Category_Name)
	values(@Category_Name)	

	Insert into tbl_SubCategory(Category_Id,SubCategory_Name,Subcategory_Price,Subcategory_Qty)
	values(SCOPE_IDENTITY(),@SubCategory_Name,@Subcategory_Price,@Subcategory_Qty)
End