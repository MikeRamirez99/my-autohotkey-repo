Loop = 1
while (Loop == 1)
{
MsgBox, 4, , Do you want to Continue?
IfMsgBox Yes
{
Inputbox,week,Week,What Week is this?
Inputbox,start,Start,Start of week?
Inputbox,end,End,End of week?
name = %week% - Week %week% (%start% to %end%)
FileCreateDir, %A_WorkingDir%\%name%
FileCreateDir, %A_WorkingDir%\%name%\1_Mon
FileCreateDir, %A_WorkingDir%\%name%\2_Tue
FileCreateDir, %A_WorkingDir%\%name%\3_Wed
FileCreateDir, %A_WorkingDir%\%name%\4_Thur
FileCreateDir, %A_WorkingDir%\%name%\5_Fri
FileCreateDir, %A_WorkingDir%\%name%\6_Sat
FileCreateDir, %A_WorkingDir%\%name%\7_Sun
FileCreateDir, %A_WorkingDir%\%name%\Web Changes
}
else
{
Loop = 0;
}
}