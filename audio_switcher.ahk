#SingleInstance		; Only allows one instance of the script to run.

#a::
	toggle:=!toggle ; This toggles the variable between true/false
	if toggle
	{
		Run C:\Program Files\nircmd-x64\nircmd.exe setdefaultsounddevice "Speakers"
		soundToggleBox("Speakers")
	}
	else
	{
		Run C:\Program Files\nircmd-x64\nircmd.exe setdefaultsounddevice "Headphones"
		soundToggleBox("Headphones")
	}
Return

; Display sound toggle GUI
soundToggleBox(Device)
{
	IfWinExist, soundToggleWin
	{
		Gui, destroy
	}
	
	Gui, +ToolWindow -Caption +0x400000 +alwaysontop
	Gui, Add, text, x35 y8, Default sound: %Device%
	SysGet, screenx, 0
	SysGet, screeny, 1
	xpos:=screenx-215
	ypos:=screeny-90
	Gui, Show, NoActivate x%xpos% y%ypos% h30 w200, soundToggleWin
	
	SetTimer,soundToggleClose, 2000
}
soundToggleClose:
    SetTimer,soundToggleClose, off
    Gui, destroy
Return
