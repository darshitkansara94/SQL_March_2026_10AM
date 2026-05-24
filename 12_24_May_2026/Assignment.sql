--Create a database with name Ecommerce_DB
--	Create a table wth name Category
--		category Id
--		Name

--	Create a table with name Subcategory
--		Subcateory Id
--		Category Id
--		Sub category Name
--		Price
--		Qty

--	Create a table with name Order
--		Order Id
--		Subcateory Id
--		Order Date
--		Order Qty

Create database ECommerce
Use ECommerce

Create table tbl_Category
(
	Category_Id int primary key identity(1,1),
	Category_Name nvarchar(20)
)

Create table tbl_SubCategory
(
	Subcategory_Id int primary key identity(1,1),
	Category_Id int,
	Subcategory_Name nvarchar(15),
	Subcategory_Qty int,
	Subcategory_Price decimal(12,2),

	Constraint cn_FK_CategoryId foreign key (Category_Id)
	references tbl_Category(Category_Id)
)

Create table tbl_Order
(
	Order_Id int primary key identity(1,1),
	Subcategory_Id int,
	Order_Date datetime,
	Order_Qty int,

	Constraint cn_FK_SubCategoryId foreign key (Subcategory_Id)
	references tbl_SubCategory(Subcategory_Id)
)

Select * from tbl_Category
Select * from tbl_SubCategory
Select * from tbl_Order

Insert into tbl_Category(Category_Name)
values('Mobile'),('Laptop'),('Watch')

Insert into tbl_SubCategory(Category_Id,Subcategory_Name,Subcategory_Price,Subcategory_Qty)
values(1,'Samsung S27',12000,5),(1,'IPhone 17',85000,10),(2,'HP',75000,3),(2,'Lenovo',67000,10)

Insert into tbl_Order(Subcategory_Id,Order_Qty,Order_Date)
values(1,2,GETDATE()),(2,1,GETDATE()),(1,1,GETDATE())

-- Inner join
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
	tbl_Category.Category_Id = sc.Category_Id

-- Different type of joins
Select tbl_Category.Category_Name,sc.Subcategory_Name,sc.Subcategory_Price,
sc.Subcategory_Qty as Inital_Qty,
tbl_Order.Order_Qty,
sc.Subcategory_Qty - tbl_Order.Order_Qty as Remain_Qty,
Convert(nvarchar(20),tbl_Order.Order_Date,106) as Order_Date,
sc.Subcategory_Price * tbl_Order.Order_Qty as Total_Order_Price
from tbl_SubCategory as sc
Inner join tbl_Order on
	sc.Subcategory_Id = tbl_Order.Subcategory_Id
Right Join tbl_Category on
	tbl_Category.Category_Id = sc.Category_Id

