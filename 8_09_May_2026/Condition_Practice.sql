--Create a new Create table with the name Student Attendance
--Where i have duplicate value of students with the attandance mark as 0  and 1.
--If 0 that means 'Present' and 1 means 'Absent'.
--And we need to display total of attendance and if less than 5 then 'Not Eligible' 
--	and more than 5 then 'Eligible'

Use Weltech_DB

Create table tbl_StudentAttandance
(
	Student_Id int,
	Student_Name nvarchar(20),
	Attandance_Status bit
)

Insert into tbl_StudentAttandance(Student_Id,Student_Name,Attandance_Status)
values(1,'Varsha',0),(2,'Sourav',0),(3,'Varsha',1),(4,'Varsha',1),(5,'Varsha',1),
(6,'Sourav',0),(7,'Sourav',0),(8,'Sourav',0),(9,'Sourav',0),(10,'Sourav',0),(11,'Sourav',0),
(12,'Jay',1)

Select * from tbl_StudentAttandance
Where Attandance_Status = 0

-- 0 = Present And 1 = Absent

-- Expected Output
	-- Sourav = 'Eligible'
	-- Varsha = 'Not Eligigble'
	-- Jay = 'Not Eligible'

Select
	Student_Name,
	Case 
		When Count(Attandance_Status) > 5 And Attandance_Status = 0 Then 'Present'
		Else 'Absent' End as Attandance,
	Case 
		When Count(Attandance_Status) > 5 Then 'Eligible'
		Else 'Not Eligible' End as Eligibility
from tbl_StudentAttandance
Group by Student_Name,Attandance_Status


