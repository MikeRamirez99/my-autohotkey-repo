`::
Speed = 200
Loop 2 {
send ^c
sleep, %Speed%
send !%A_Tab%
sleep %Speed%
send ^v
send %A_Tab%
sleep %Speed%
send !%A_Tab%
sleep %Speed%
send {right}
}
Loop 2 {
send ^c
sleep, %Speed%
send !%A_Tab%
sleep %Speed%
send ^v
send %A_Tab%
sleep %Speed%
send !%A_Tab%
sleep %Speed%
send {right}
}
send !%A_Tab%
sleep %Speed%
send %A_Tab%
sleep %Speed%
Loop 10
{
send {Backspace}
sleep 100
}

