#InstallKeybdHook
#InstallMouseHook
#UseHook
SendMode, Input
SetKeyDelay, 30, 30
#SingleInstance, Force
#NoEnv

^!u::
WinGetActiveTitle, title
Clipboard := title
return

^d::
send, +{Home}
send, ^c
send, {End}
send, {Enter}
send, ^v
return