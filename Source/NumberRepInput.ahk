`::
InputBox, Times , Repetition Times, How many times?, 640,480
Rep = 1
Loop %Times% {
send %Rep%
send {Enter}

Rep += 1 
}