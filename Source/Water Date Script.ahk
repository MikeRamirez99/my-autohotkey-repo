`::
InputBox, Month, Month, Please enter a month., , 200, 125
InputBox, StartDate, Starting Date, Please enter a start date., , 200, 125
ML = 32
rep := (ML - StartDate)
Loop, %rep%{
Sendinput, %Month%/
Sendinput, %StartDate%
Sendinput, [ ]
Sendinput, {Enter}
StartDate+=1 
}