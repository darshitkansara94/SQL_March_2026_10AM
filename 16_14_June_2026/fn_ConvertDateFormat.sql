Alter function fn_ConvertDateFormat
(
	@Date datetime
)
Returns nvarchar(20)
As
Begin
	Return Convert(nvarchar(20),@Date,107)
End