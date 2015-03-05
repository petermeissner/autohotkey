### description
My personal ShortCuts and HotKeys enhancing workflow on Windows machines.

### autohotkey
http://www.autohotkey.com/

### features

**Explorer**

- <kbd>Cntr</kbd><kbd>Shift</kbd><kbd>F12</kbd> : open document in Notepad++
- <kbd>Cntr</kbd><kbd>Shift</kbd><kbd>RightMouse</kbd> : copy full path to file using `'/'` instead of `'\'`


**R-Stuff**

- `'iin'` : will be replaced by `'%in%'`
- `'iif'` : will be replaced by skelleton for R's if-statement
- `'ffor'` : will be replaced by skelleton for R's for-loop
- <kbd>Cntr</kbd><kbd>Shift</kbd>#<kbd>.</kbd> : writes Magrittr/dplyr pipe operator `' %>% '`
- <kbd>Cntr</kbd><kbd>Shift</kbd>#<kbd>v</kbd> : replaces all `'\'` within clipboard by `'/'` and pastes them to the cursor position
- <kbd>Cntr</kbd><kbd>Shift</kbd>#<kbd>.</kbd> : writes `' %.% '`
    - sometimes pasting together things in R is aweful hard to read resulting in error prone code
    - instead I use `'%.%' <- function(a, b) paste0(a, b)` to replace lines like that ...
    - `paste0("i:", i, "b:", b)` with something like that ...
    - `"i:"  %.%  i  %.%  "b:"  %.%  b`


**HTML**

- <kbd>Cntr</kbd><kbd>Shift</kbd><kbd>h</kbd> : writes an HTML skeleton at cursor position




