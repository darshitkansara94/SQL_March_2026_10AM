Create procedure sp_HighestSalary
(
	@SalaryRank int
)
As
Begin
	With cte_EmployeeSalary as 
		(
			Select DENSE_RANK() over(order by Employee_Salary desc) as srno,
				Employee_ID,Employee_FirstName,Employee_Salary
			from tbl_EmpSalary
		)

		Select * from cte_EmployeeSalary
		Where srno = @SalaryRank
End