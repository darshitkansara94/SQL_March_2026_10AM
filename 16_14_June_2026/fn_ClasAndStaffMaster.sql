Alter function fn_ClasAndStaffMaster()
Returns Table
As
	return (
		Select CS.Class_Id,CS.Class_Name,CS.Class_Standard,
		sm.Staff_Id,Concat_WS(' ',SM.Staff_FirstName,sm.Staff_LastName) as Full_Name,
		sm.Staff_Address,sm.Staff_EmailAddress,
		sm.Staff_MobileNo
		from tbl_Class as CS
		Inner join tbl_StaffMaster as SM On
			CS.Staff_Id = SM.Staff_Id
	)