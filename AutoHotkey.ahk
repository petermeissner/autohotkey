; =======================================================================================
; ====  Personal AutoHotkeyScript
; ====  - Win7
; ====  - Install AutoHotkey and put this e.g. into AutoStart to be available 
; =======================================================================================

AutoTrim, off


; =======================================================================================
; AutoHotKey
; =======================================================================================

; ---------------------------------------------------------------------------------------
; reloading AHK Scripts automatically whenever they are changed and saved
; ---------------------------------------------------------------------------------------

~^s::
SetTitleMatchMode, 2 ;--- works in ANYTHING displaying scripts name as ANY part of the window title
IfWinActive,.ahk
{
  SplashImage , ,b1 cw191919 ct9acd32, %A_ScriptName%, Reloaded
  Sleep,500
  SplashImage, Off
  Reload
}
return


; =======================================================================================
; Misc
; =======================================================================================

; ---------------------------------------------------------------------------------------
; get RGB color at cursor
; ---------------------------------------------------------------------------------------

^!c::  ; Control+Alt+Z hotkey.
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%, RGB
clipboard = %color%
StringReplace, clipboard , clipboard , 0x,#,All
return


; =======================================================================================
; Windows Explorer Stuff
; =======================================================================================


; ---------------------------------------------------------------------------------------
; hitting Cntr-Shift-F12 will open a document marked in Explorer in Notepad++
; only works when Notepad++ is installed 
; ---------------------------------------------------------------------------------------
#IfWinActive ahk_class CabinetWClass
^+f12::
Send !dn
Send {enter}
return
#IfWinActive
return


; ---------------------------------------------------------------------------------------
; hitting Cntr-Shift-RightMousButton will copy path of file(s) 
; from Explorer to clipbord and replace '\'s by '/'s
; ---------------------------------------------------------------------------------------
#IfWinActive ahk_class CabinetWClass
^+RButton::
Send +{RButton}
Send {p}
clipboard = %clipboard%
StringReplace, clipboard, clipboard, \, /, All 
return
#IfWinActive
return


; =======================================================================================
; RStuff


; ---------------------------------------------------------------------------------------
; Cntr-Enter within Notepad++ sends lines from Notepad++ to Rgui: 
; ---------------------------------------------------------------------------------------

#IfWinActive ahk_class Notepad++
  
  ^enter::
    IfWinNotExist, ahk_class Rgui 
      Run, "C:\Program Files\R\R-3.1.3\bin\x64\Rgui.exe"
    
    clipboard=
    Send ^c 
    if clipboard=
    {
      Send {HOME}+{END}^c{END}{Down}{HOME}
    }
    
    WinActivate, ahk_class Rgui 
    Send ^v {Enter}
    
    WinActivate, ahk_class Notepad++ 
  return



; ---------------------------------------------------------------------------------------
; Cntr-Shift-. writes my prefered paste operator in R defined as follows: 
; '%.%' <- function(a, b) paste0(a, b)
; ---------------------------------------------------------------------------------------
^+.::
Send {space}`%.`%{space}
return


; ---------------------------------------------------------------------------------------
; Cntr-Shift-# writes the R/MagrittR pipe operator 
; ---------------------------------------------------------------------------------------
^+#::
Send {space}`%>`%{space} 
return


; ---------------------------------------------------------------------------------------
; Cntr-Shift-# writes the R/MagrittR pipe operator 
; ---------------------------------------------------------------------------------------
^+ä::
Send {space}`%<>`%{space}
return


; ---------------------------------------------------------------------------------------
; convenience writing of '%in%' by simply typing in 'iin'
; ---------------------------------------------------------------------------------------
::iin::%in%


; ---------------------------------------------------------------------------------------
; convenience writing of if skeleton by simply typing 'iif'
; ---------------------------------------------------------------------------------------
::iif::if ( ) {{}`n`n{}}


; ---------------------------------------------------------------------------------------
; convenience for loop skeletton by simply typing 'ffor'
; ---------------------------------------------------------------------------------------
::ffor::for ( i in) {{}`n`n{}}{Up}{Up}{Right}{Right}{Right}{Right}{Right}{Right}{Right}{Right}{Right}


; ---------------------------------------------------------------------------------------
; convenience copy-pasting of Windows-paths into R conformant layout (replacing all '\' by '/')
; ---------------------------------------------------------------------------------------
^+v::
StringReplace, clipboard, clipboard, \, /, All 
SendInput, %clipboard% 
return 



; =======================================================================================
; HTML
; =======================================================================================


; ---------------------------------------------------------------------------------------
; write (minimal) HTML skelleton
; ---------------------------------------------------------------------------------------
^!h::
SendInput, <{!}DOCTYPE HTML>`n`n<html>`n`n<head></head> <{!}-- HEAD -->`n`n<title></title> `n`n<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">`n <meta http-equiv="expires"      content="0"> `n`n<meta name="author"      content="Peter Meissner"> `n<meta name="keywords"    content=""> `n<meta name="description" content="">`n`n<script src="js/my.js"></script>`n<link   rel="stylesheet" type="text/css" href="mystyle.css">`n`n</head>`n`n<body> <{!}-- BODY -->`n`nHälloWörld{!}`n`n</body>`n`n</html>`n





