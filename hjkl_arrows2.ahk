#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

*f::Input, Key, VL1
*f Up::
Input
Key := StrLen(Key)
IF A_PriorHotKey = *f
{
	SendInput, {Left %Key%}
	SendInput, {Blind}f
	SendInput, {Right %Key%}
}
Key =
Return
#If GetKeyState("f","P")
h::left
j::down
k::up
l::right
0::home
4::end
w::^right
b::^left
#If