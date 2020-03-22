RecursiveLoop(loop)
{
if(loop = 0)
{

}
else
{
send %loop%
send {Enter}
RecursiveLoop(loop -1)
}

}





`::
InputBox, Times , Repetition Times, How many times?, 640,480
RecursiveLoop(Times)