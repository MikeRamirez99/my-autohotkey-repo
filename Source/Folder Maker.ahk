#`::
InputBox, Name, Name, Please enter base name., , 200, 125
InputBox, Repetitions, Repetitions, Please enter amount to repeat., , 300, 125
InputBox, Iteration, Repetitions, Please enter base number, , 200, 125
InputBox, Digits, Digits, Please type the number of digits, , 300, 200
Speed = 300

Loop, %Repetitions%{
if (%Digits% => 4 or %Digits% = 0)
	{
	break
	}
else if (%Digits% < 4)
	{
	if (%Iteration% !> 10)
		{
		%Digits% := 3
		}
	else if (%Iteration% !> 100)
		{
		%Digits% := 2
		}
	else if (%Iteration% !> 1000)
		{
		%Digits% := 1
		}
	else 
		{
		
		}
	if (%Digits% == 3)
		{
		Sendinput, ^+N
		Sleep, %Speed%
		Sendinput, %Name% + 00%Iteration%
		Sleep, %Speed%
		Sendinput, {Enter}
		Sleep, %Speed%
		Iteration+=1 
		}
	else if (%Digits% == 2)
		{
		Sendinput, ^+N
		Sleep, %Speed%
		Sendinput, %Name% + 0%Iteration%
		Sleep, %Speed%
		Sendinput, {Enter}
		Sleep, %Speed%
		Iteration+=1 
		}
	else if (%Digits% == 1)
		{
		Sendinput, ^+N
		Sleep, %Speed%
		Sendinput, %Name% + %Iteration%
		Sleep, %Speed%
		Sendinput, {Enter}
		Sleep, %Speed%
		Iteration+=1 
		}
	else 
		{

		}

	}
}
MsgBox, 0, Specs, %Repetitions% %Iteration% %Digits% %Name%
Sleep, 400
MsgBox, 0, Finished, Process has finished