MoveLeft()
{
Loop, 6
{
Send {Left}
}
}

Month()
{
InputBox, Month , Month, Which Month?, 50,100
Send {Shift Down}
Loop, 6{
Send {Right}
}
Send {Shift Up}
Send {Alt}
Send {H}
Send {B}
Send {A}
Send {Alt}
Send {H}
Send {M}
Send {C}
Send %Month%
}

Weekdays()
{
Send {Down}
Send Monday
Send {Right}
Send Tuesday
Send {Right}
Send Wednesday
Send {Right}
Send Thursday
Send {Right}
Send Friday
Send {Right}
Send Saturday
Send {Right}
Send Sunday
Send {Shift Down}
MoveLeft()
Send {Shift Up}
Sleep 300
Send {Alt}
Sleep 300
Send {H}
Sleep 300
Send {B}
Sleep 300
Send {A}
}




Start(x)
{
InputBox, Days , Days in Month, How many days in the month?, 50,100
Count = 1
Fweek = %x%
Row = 1
Remain := Days - Count
Balance := 7 - Fweek
Send {Down}
MoveLeft()
Days += 1
Loop, %Balance%
	{
	Send {Right}
	}
Loop, %Fweek%
	{
	Send %Count%
	Send {Right}
	Count += 1
	}	
Row += 1
while, (!(Count = Days))
	{	
	if (Remain > 7) 
		{
		Send {Down}
		Sleep 500
		Send {Left}
		MoveLeft()
		Loop, 7
			{
			Send %Count%
			Send {Right}
			Count += 1
			}
		Remain := Days - Count
		Row += 1
		}
	else if (!(Count = Days))
		{
		Remain := Days - Count
			
		if (!(Count = Days))
			{
			Send {Down}
			Sleep 500
			Send {Left}
			MoveLeft()
			}
		Loop, %Remain%
			{
			Send %Count%
			Send {Right}
			Count += 1
			}
		Row += 1
		}
	}
Send {Left}
Send {Shift Down}
Sleep 300
Loop, %Row% 
	{
	Send {Up}
	Sleep 300
	}
Send {Alt}
Sleep 300
Send {H}
Sleep 300
Send {B}
Sleep 300
Send {A}
Send {Shift Up}
}

DatePicker()
{
InputBox, Start , Starting Weekday, Which Weekday does it start out on? (1-7), 50,100
if (Start = 1)
{ 
Start(7)
}
else if ( Start = 2)
{ 
Start(6)
}
else if ( Start = 3)
{ 
Start(5)
}
else if ( Start = 4)
{ 
Start(4)
}
else if ( Start = 5)
{ 
Start(3)
}
else if ( Start = 6)
{ 
Start(2)
}
else if ( Start = 7)
{ 
Start(1)
}
else
{ 
MsgBox, 0, Not Found, Option not found, 1
}

}

`::
Month()
Weekdays()
DatePicker()