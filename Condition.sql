Create database db_School

use db_School

Create table tbl_Student
(
	Student_ID int,
	Student_Name nvarchar(20),
	Student_Marks decimal(10,2)
)

Insert into tbl_Student(Student_Id,Student_Name,Student_Marks)
values(1,'Sourav',89),(2,'Varsha',56),
	(3,'Dewang',34),(4,'Jay',85),(5,'Diya',33)

Select * from tbl_Student

Select Student_Id,Student_Name,Student_Marks,
	Case 
		When Student_Marks > 35 Then
			Case
				When Student_Marks > 85 Then 'Distinction'
				When Student_Marks between 50 And 85 Then 'First Class'
				When Student_Marks between 35 And 49 Then 'Secon Class'
				Else 'Pass' End
		Else 'Fail' End as Student_Result
from tbl_Student

Declare @Marks decimal(10,2) = 85

If (@Marks > 35)
Begin
-- Pass
	If(@Marks > 85)
	Begin
		Print('Distinction')
	End
	Else If(@Marks between 50 And 85)
	Begin
		Print('First Class')
	End
	Else If(@Marks between 35 And 49)
	Begin
		Print('Second Class')
	End
	Else 
	Begin
		Print('Pass')
	ENd
End
Else
Begin
	-- Fail
End