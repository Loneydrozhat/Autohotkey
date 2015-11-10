
^+l::
{
InputBox, var1, autocaller, Which lane?
return
}

^+k::
{
winactivate ahk_exe LolClient.exe
click, 405, 740
send %var1%
send {enter}
return
}