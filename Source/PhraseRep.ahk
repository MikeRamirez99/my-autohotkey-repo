Repeat(words,amount,linebreak,humanize)
{
if(humanize == 1)
{
SetKeyDelay, 0
}
else if(humanize == 2)
{
SetKeyDelay, 7
}
else if(humanize == 3)
{
SetKeyDelay, 15
}
else
{
SetKeyDelay, 0
}

	{
	Loop,%amount%
		{
		Send %words%
			if(linebreak == 1)
			{
			sendraw `n
			}
		}
	}
}

`::
Inputbox,Phrase,Phrase,What Phrase to Repeat?
Inputbox,Reps,Repetitions,How many Repetitions?
Inputbox,HumFactor,Humanizer,Pick a speed`n1. Computer`n2. Jogger`n3. Turtle
MsgBox, 4, ,Linebreak?
IfMsgBox Yes
	Repeat(Phrase,Reps,1,Humanizer)
else IfMsgBox No
   	Repeat(Phrase,Reps,0,Humanizer)