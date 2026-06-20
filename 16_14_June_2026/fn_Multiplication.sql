Create function fn_Multiplication
(
	@Value1 int,
	@Value2 int
)
Returns decimal(15,2)
As
Begin
	Return @Value1 * @Value2
End