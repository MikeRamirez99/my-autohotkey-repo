randomASCII(loopcount,loopmajor)
{
ascii = 96
setkeydelay,0
Loop, %loopmajor%
{
Loop, %loopcount%
{
Random, rand,0,26
ascii+=rand
sending := Chr(ascii)
Send,%sending% 
ascii = 96
}
Send, {Enter}
}
exit
}

`::
inputbox,loop,looping,minor loop times
inputbox,loop2,looping,major loop times
randomASCII(loop,loop2)
exit