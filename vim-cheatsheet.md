## Help
:help

## New Commands To Practice
| Command       | Description                                   |
| ------------- | --------------------------------------------- |
| C-c, Esc      | exit insert mode                              |
| ciw           | delete whole word                             |
| ciw           | change whole word                             |
| d0, d$        | delete to end / beginning of line             |
| c0, c$        | change to end / beginning of line             |
| di{, di(, di" | delete text inside {}, (), ""                 |
| ci{, ci(, ci" | change text inside {}, (), ""                 |
| C-t, C-d      | insert/remove tab while in insert mode        |
| C-w           | delete word while in insert mode              |
| C-u           | delete to BOL while in insert mode            |
| C-o           | run normal mode command while in insert mode  |
| [N]G          | navigate to the to line N                     |
| C-f, C-b      | page down/up                                  |
| C-e, C-y      | scroll down/up                                |

## Insert Mode
| Command       | Description                                   |
| ------------- | --------------------------------------------- |
| C-c, Esc      | exit insert mode                              |
| i, a          | insert before / after character               |
| I, A          | insert at beginning / end of line             |
| o, O          | insert on next / prev line                    |
| x             | delete char                                   |
| r             | replace char                                  |
| s             | delete char and insert                        |
| dd            | delete line                                   |
| cc            | change whole line                             |
| dw            | delete to end of word                         |
| cw            | change to end of word                         |
| ciw           | delete whole word                             |
| ciw           | change whole word                             |
| di{, di(, di" | delete text inside {}, (), ""                 |
| ci{, ci(, ci" | change text inside {}, (), ""                 |
| d0, d$        | delete to end / beginning of line             |
| c0, c$        | change to end / beginning of line             |
| C-t, C-d      | insert/remove tab while in insert mode        |
| C-w           | delete word while in insert mode              |
| C-u           | delete to BOL while in insert mode            |
| C-o           | run normal mode command while in insert mode  |

## Normal Mode
| Command       | Description                                   |
| ------------- | --------------------------------------------- |
| u             | undo                                          |
| C-r           | redo                                          |
| :w [file]     | write (optional - to file)                    |
| :w! [file]    | force write (optional - to file)              |
| :x [file]     | write (optional - to file) and quit           |
| :x! [file]    | force write (optional - to file) and quit     |
| :q            | quit                                          |
| :q!           | force quit                                    |
| i,j,h,l       | navigate up, down, left, right                |
| w,b           | navigate forward/backward by 1 word           |
| 0,$           | navigate to the beginning / end of the line   |
| ^             | navigate to the first non blank char on line  |
| %             | navigate to the open/closing of a bracket     |
| gg, G         | navigate to the begining / end of the file    |
| [N]G          | navigate to the to line N                     |
| H, M, L       | navigate to the top/middle/bottom of screen   |
| C-f, C-b      | page down/up                                  |
| C-e, C-y      | scroll down/up                                |

## Visual mode (TODO: beef this up)
| Command       | Description                                   |
| ------------- | --------------------------------------------- |
| v             | enter visual char mode                        |
| V             | enter visual line mode (needs Esc, not C-c    |
|               |    after multiline insert / append            |
| <, >          | shift text left / right                       |
| ~             | switch case                                   |
| u, U          | make selection lower / upper case             |
| p, P          | paste before / after                          |
| d             | cut                                           |


- d$ (cut to eol), d0 (cut to bol)
- y (copy)
- y$ (copy to eol), y0 (cut to bol)
- "xy (copy to register x)
- "xp (paste from register x)
- =% (when on open bracket, indent to close bracket)
- gg=G (indent whole file)

## Vimdiff
| Command       | Description                                   |
| ------------- | --------------------------------------------- |
| [c, ]c        | previous / next difference                    |
| do, dp        | diff obtain / put                             |
| zo, zc        | open / close folded text                      |
| zR, zC        | expand / close all folds                      |

# search
- /* (search pattern *)
- /\c* (search, case insens.)
- /\C* (search, case sens.)
- n (next entry), N (prev entry)
- :%s/foo/bar/g (find foo, replace with bar)
- :%s/foo/bar/gc (same as above w/ confirmation)
- :s/foo/bar/g (only on current line)

# tabs
- :tabnew file (new tab for file)
- gt, :tabn (next tab)
- gT, :tabp (prev tab)
- [N]gt (move to tab N)
- :tabc (close tab)

# windows
- C-w v (open new vertical window)
- C-w s (open new horizontal window)
- C-w c (close window)
- C-w h,j,k,u (navigate between windows)

# line numbers
- :set number (turn on)
- :set nonumber (turn off)
