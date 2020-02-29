#`::
InputBox, Name, Name, Please enter base name., , 200, 125
InputBox, Repetitions, Repetitions, Please enter amount to repeat., , 300, 125
InputBox, Iteration, Repetitions, Please enter base number, , 200, 125
Loop, %Repetitions%{
Sendinput, ^+N
Sleep, 300
Sendinput, %Name% + %Iteration%
Sleep, 300
Sendinput, {Enter}
Sleep, 300
Iteration+=1 
}
Sleep, 400
MsgBox, 0, Finished, Process has finished