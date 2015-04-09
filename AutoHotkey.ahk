; =============================================================================
; ====  Personal AutoHotkeyScript
; ====  - Win7 / Win 8.1
; ====  - Install AutoHotkey and put this into AutoStart to be available 
; =============================================================================

AutoTrim, off


; =============================================================================
; AutoHotKey
; =============================================================================


; -----------------------------------------------------------------------------
; reloading AHK Scripts automatically whenever they are changed and saved
; -----------------------------------------------------------------------------

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


; =============================================================================
; Misc
; =============================================================================

; -----------------------------------------------------------------------------
; get RGB color at cursor
; -----------------------------------------------------------------------------

^!c::  ; Control+Alt+c hotkey.
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%, RGB
clipboard = %color%
StringReplace, clipboard , clipboard , 0x,#,All
return


; =============================================================================
; Windows Explorer Stuff
; =============================================================================


; -----------------------------------------------------------------------------
; hitting Cntr-Shift-RightMousButton will copy path of file(s) 
; from Explorer to clipbord and replace '\'s by '/'s
; -----------------------------------------------------------------------------
#IfWinActive ahk_class CabinetWClass
^+RButton::
Send +{RButton}
Send {p}
clipboard = %clipboard%
StringReplace, clipboard, clipboard, \, /, All 
return

#IfWinActive




; =============================================================================
; RStuff


; -----------------------------------------------------------------------------
; Cntr-Enter within Notepad++ sends lines from Notepad++ to Rgui: 
; -----------------------------------------------------------------------------

#IfWinActive ahk_class Notepad++
  
  ^enter::
    ; if R is not started, start it
    IfWinNotExist, ahk_class Rgui 
    {
      WinActivate, ahk_class Notepad++ 
      WinGetTitle, Title, A
        Needle := "(.*)\\"
        RegExMatch(Title, Needle, OutVar)
      ; make sure, path to Rexecutable is right
      Run, "C:\Program Files\R\R-3.1.3\bin\x64\Rgui.exe",  %OutVar%
      sleep 1000 
    }
    
    ; switch to Notepad++
    WinActivate, ahk_class Notepad++ 
    
    ; copy text selection to clipboard
    clipboard=
    Send ^c 
    ClipWait, 0.1
    
    ; if no text was selected, mark line and copy it to clipboard
    if clipboard=
    {
      Send {HOME}+{END}^c{END}{Down}{HOME}
    }
    ClipWait, 0.1
    
    ; switch to Rgui and insert clipboard
    WinActivate, ahk_class Rgui 
    Send ^v {Enter}
    
    ; switch back to Notapad++
    WinActivate, ahk_class Notepad++ 
  return

#IfWinActive


; -----------------------------------------------------------------------------
; Cntr-Shift-. writes my prefered paste operator in R defined as follows: 
; '%.%' <- function(a, b) paste0(a, b)
; -----------------------------------------------------------------------------
^+.::
Send {space}`%.`%{space}
return

^+-::
Send {space}`%..`%{space}
return

; -----------------------------------------------------------------------------
; Cntr-Shift-# writes the R/MagrittR pipe operator 
; -----------------------------------------------------------------------------
^+#:: 
Send {space}`%>`%{space} 
return


; -----------------------------------------------------------------------------
; Cntr-Shift-# writes the R/MagrittR pipe operator 
; -----------------------------------------------------------------------------
^+ä::
Send {space}`%<>`%{space}
return


; -----------------------------------------------------------------------------
; convenience writing of '%in%' by simply typing in 'iin'
; -----------------------------------------------------------------------------
::iin::%in%


; -----------------------------------------------------------------------------
; convenience writing of if skeleton by simply typing 'iif'
; -----------------------------------------------------------------------------
::iif::if ( ) {{}`n`n{}}


; -----------------------------------------------------------------------------
; convenience for loop skeletton by simply typing 'ffor'
; -----------------------------------------------------------------------------
::ffor::for ( i in) {{}`n`n{}}{Up}{Up}{Right}{Right}{Right}{Right}{Right}{Right}{Right}{Right}{Right}


; -----------------------------------------------------------------------------
; convenience copy-pasting of Windows-paths into R conformant layout (replacing all '\' by '/')
; -----------------------------------------------------------------------------
^+v::
StringReplace, clipboard, clipboard, \, /, All 
SendInput, %clipboard% 
return 



; =============================================================================
; HTML
; =============================================================================


; -----------------------------------------------------------------------------
; write (minimal) HTML skelleton
; -----------------------------------------------------------------------------
^!h::
SendInput, <{!}DOCTYPE HTML>`n`n<html>`n`n<head></head> <{!}-- HEAD -->`n`n<title></title> `n`n<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">`n <meta http-equiv="expires"      content="0"> `n`n<meta name="author"      content="Peter Meissner"> `n<meta name="keywords"    content=""> `n<meta name="description" content="">`n`n<script src="js/my.js"></script>`n<link   rel="stylesheet" type="text/css" href="mystyle.css">`n`n</head>`n`n<body> <{!}-- BODY -->`n`nHälloWörld{!}`n`n</body>`n`n</html>`n





