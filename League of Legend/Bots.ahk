#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+p::
{
send ^c
winmaximize ahk_class Notepad++
winmove, ahk_class Notepad++,, 0, 0,1288, 1404
winActivate ahk_class Notepad++
click, 1200, 1333
send ^v
send ^f
WinActivate,,find next count on losing
click, 70, 35
click, 50, 285
click, 310, 70
send /t
send {tab}
send :
send {tab}
send {tab}
send {tab}
send {tab}
send {tab}
send {tab}
send {tab}
send {tab}
send {enter}
}
