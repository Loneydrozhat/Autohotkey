ping=110
~1::
ImageSearch, asdx, asdy, 0, 0, 1080, 1920, *12 learned.png
MsgBox, %ErrorLevel%
if ErrorLevel != 0
    Return
x=0
;send {e down}
;sleep 10
;send {e up}

asd:
ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 learned.png
if ErrorLevel = 2
    MsgBox Something is wrong.
else if ErrorLevel = 1 
{
    Sleep 10
    x+=1
    if x < 400
        Goto, asd
    else
        Return
}
else 
{
    Sleep %ping%
    ImageSearch, asdx, asdy, 900, 1000, 940, 1040,*12 learned.png
    if ErrorLevel = 0 
    {
        send {e down}
        sleep 10
        send {e up}
    }
    else
        Goto, asd
}
Return