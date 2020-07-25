#SingleInstance

#z:: ;opens snipping tool

Run C:\Windows\System32\SnippingTool.exe
WinWait, ahk_exe SnippingTool.exe
If WinExist("ahk_exe SnippingTool.exe")  
    WinActivate, ahk_exe SnippingTool.exe
Return

#s:: ;opens audio mixer

Run C:\Windows\System32\SndVol.exe
WinWait, ahk_exe SndVol.exe
If WinExist("ahk_exe SndVol.exe")  
    WinActivate, ahk_exe SndVol.exe
WinMove, ahk_exe SndVol.exe,, 1362, 568                 ;     <<-- NOTE need another "," 
Return

