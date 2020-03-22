`::
InputBox, Duration, Duration, Please input a duration., , 200, 125
Iteration = 1
Sleep = 150
Loop, %Duration%
	{
	send {F2}
	sleep %Sleep%
	send ^{c}
	sleep %Sleep%
	Loop, 20
		{
		Send {Left}
		}
	sleep %Sleep%
	send %Iteration%
	sleep %Sleep%
	send .
	sleep %Sleep%
	send {Space}
	sleep %Sleep%		
	send !%A_Tab%
	sleep %Sleep%
	send ^{v}
	sleep %Sleep%
	send {Enter}
	sleep %Sleep%
	send !%A_Tab%
	sleep 200
	Iteration += 1
	send {Right}
	}


