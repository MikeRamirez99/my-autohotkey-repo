Random()
{
Random, rand, 1, 5
if (rand = 1)
{
SoundPlay, E:\[X] Apps\AHK\AutoHotkeyPortable\Data\SFX\paster-1.wav
}
if (rand = 2)
{
SoundPlay, E:\[X] Apps\AHK\AutoHotkeyPortable\Data\SFX\paster-2.wav
}
if (rand = 3)
{
SoundPlay, E:\[X] Apps\AHK\AutoHotkeyPortable\Data\SFX\paster-3.wav
}
if (rand = 4)
{
SoundPlay, E:\[X] Apps\AHK\AutoHotkeyPortable\Data\SFX\paster-4.wav
}
if (rand = 5)
{
SoundPlay, E:\[X] Apps\AHK\AutoHotkeyPortable\Data\SFX\paster-5.wav
}
}




`::
SoundPlay, E:\[X] Apps\AHK\AutoHotkeyPortable\Data\SFX\AOA1.wav

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
Random()
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
SoundPlay, E:\[X] Apps\AHK\AutoHotkeyPortable\Data\SFX\AOA2.wav
Loop 10
{
send {Backspace}
sleep 100
}

