Create table with the field salary and others
	When i ask for salary equal or greater than record should be 
		return by function


dbo.FindSalary(10000)

select * from tbl_EmpSalary

Create function fn_Salary
(
	@val int
)
Returns table
As
	return (
		select * from tbl_EmpSalary
		where Employee_Salary >= @val 
	)

select * from dbo.fn_Salary(10000)