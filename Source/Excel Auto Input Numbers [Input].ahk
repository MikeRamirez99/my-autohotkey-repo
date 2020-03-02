`::
InputBox, Length, Length, Please enter a number, , 200, 125
StartDate = 1
Loop, %Length%{
Sendinput, %StartDate%
Sendinput, {Enter}
Sleep, 10 
StartDate+=1 
}