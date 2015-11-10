hotkey, f2, pause

^+l::
{
InputBox, var1, Automatic Lane Caller, Which lane?
return
}



^+c::
{
msgbox, %GetColor%
}


^+j::
{
Isorange:
PixelGetColor, GetColor, 1146, 703
If(GetColor != 0x323324)  ;if NOT
{
    sleep 400
	goto Isorange
}
else  ;it must be white then
    {
	winactivate ahk_exe LolClient.exe
	click, 405, 740
	send %var1%
	send {enter}
	return
	}
}

^+h::
{
	click, 405, 740
	send %var1%
	send {enter}
}



Pause:
pause
return
