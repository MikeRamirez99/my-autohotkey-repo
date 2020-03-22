`::
InputBox, Match , Match Info, Enter Match Number, 640,480
InputBox, Red1 , Match Info, Red Alliance 1?, 640,480
InputBox, Red2 , Match Info, Red Alliance 2?, 640,480
InputBox, Red3 , Match Info, Red Alliance 3?, 640,480
InputBox, Blue1 , Match Info, Blue Alliance 1?, 640,480
InputBox, Blue2 , Match Info, Blue Alliance 2?, 640,480
InputBox, Blue3 , Match Info, Blue Alliance 3?, 640,480
InputBox, BlueScore , Match Info, What is the blue score?, 640,480
InputBox, RedScore , Match Info, What is the red score?, 640,480

send %Match%
send {Right}
send %Red1%
send {Right}
send %Red2%
send {Right}
send %Red3%
send {Right}
send %Blue1%
send {Right}
send %Blue2%
send {Right}
send %Blue3%
send {Right}
send %BlueScore%
send {Right}
send %RedScore%
