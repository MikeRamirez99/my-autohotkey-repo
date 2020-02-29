`::
InputBox, FirstNum, Start Number, Please enter a starting point., , 200, 125
InputBox, SecondNum, End Number, Please enter an ending point., , 200, 125
Count := (SecondNum - FirstNum)+1
Loop, %Count%{
Sendinput, %FirstNum%
Sleep, 100
Sendinput, {Enter}
FirstNum += 1
}