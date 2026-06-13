Create procedure sp_InsertStudentData
(
	@StudetId int,
	@StudentName nvarchar(20),
	@StudentAddress nvarchar(100),
	@StudentAge int,
	@UserId int
)
As
Begin
	Insert into tbl_Student_Master(Student_Id,Student_FullName,Student_Address,
		Student_Age,User_Id)
	Values(@StudetId,@StudentName,@StudentAddress,@StudentAge,@UserId)

End