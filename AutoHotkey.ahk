; =======================================================================================
; ====  Personal AutoHotkeyScript
; ====  - Win7
; ====  - Install AutoHotkey and put this e.g. into AutoStart to be available 
; =======================================================================================

AutoTrim, off



; =======================================================================================
; Windows Explorer Stuff
; =======================================================================================


; ---------------------------------------------------------------------------------------
; hitting Cntr-Shift-F12 will open a document marked in Explorer in Notepad++
; only works when Notepad++ is installed 
; ---------------------------------------------------------------------------------------
^+f12::
Send !fn
Send {enter}
return


; ---------------------------------------------------------------------------------------
; hitting Cntr-Shift-RightMousButton will copy path of file(s) 
; from Explorer to clipbord and replace '\'s by '/'s
; ---------------------------------------------------------------------------------------
#IfWinActive ahk_class CabinetWClass
^+RButton::
Send +{RButton}
Send {a}
StringReplace, clipboard, clipboard, \, /, All 
return
#IfWinActive
return



; =======================================================================================
; RStuff
; =======================================================================================


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
; convenience writing of '%in%' by simply typing in 'iin'
; ---------------------------------------------------------------------------------------
::iin::%in%


; ---------------------------------------------------------------------------------------
; convenience writing of if skeletton by simply typing 'iif'
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





