### description
My personal ShortCuts and HotKeys enhancing workflow on Windows machines.

### autohotkey
- get autohotkey and install from here http://www.autohotkey.com/
- put the script in your autostart

### features

**General**

- <kbd>Cntr</kbd><kbd>Alt</kbd><kbd>LeftMouse</kbd> : detect color at cursor and put it into clipboard as hex RGB (e.g. <span style="color: #4183C4;"> #4183C4 </s> )  

**Explorer**

- <kbd>Cntr</kbd><kbd>Shift</kbd><kbd>RightMouse</kbd> : copy full path to file using `'/'` instead of `'\'`

**R-Stuff**

- `'iin'` : will be replaced by `'%in%'`
- `'iif'` : will be replaced by skelleton for R's if-statement
- `'ffor'` : will be replaced by skelleton for R's for-loop
- <kbd>Cntr</kbd><kbd>Shift</kbd><kbd>.</kbd> : writes Magrittr/dplyr pipe operator `' %>% '`
- <kbd>Cntr</kbd><kbd>Shift</kbd><kbd>v</kbd> : replaces all `'\'` within clipboard by `'/'` and pastes them to the cursor position
- <kbd>Cntr</kbd><kbd>Shift</kbd><kbd>.</kbd> : writes `' %.% '`
    - sometimes pasting together things in R is aweful hard to read resulting in error prone code
    - instead I use `'%.%' <- function(a, b) paste0(a, b)` to replace lines like that ...
    - `paste0("i:", i, "b:", b)` with something like that ...
    - `"i:"  %.%  i  %.%  "b:"  %.%  b`

**RStudio**

- <kbd>Cntr</kbd><kbd>Alt</kbd><kbd>F10</kbd> clear screen and restart R session

**Notepad++**

- <kbd>Cntr</kbd><kbd>Enter</kbd> passes line to Rgui and switches back focus to Notepad++ (like NppToR)


**HTML**

- <kbd>Cntr</kbd><kbd>Shift</kbd><kbd>h</kbd> : writes an HTML skeleton at cursor position




