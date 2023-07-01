# help
:help

# insert/delete
| command  | description                        |
| -------- | ---------------------------------- |
| C-c, Esc | exit insert mode                   |
| i, a     | insert before /after character     |
| I, A     | insert at beginning / end of line  |
| o, O     | insert on next / prev line         |

| x (delete char)
| dd (delete line)
| dw (delete word)
| d0 (delete to bol)
| d$ (delete to eol)
| di{, di(, di" (delete text inside {}, (), "")
| ci{, ci(, ci" (change text inside {}, (), "")
| C-t, C-d (insert/remove tab while in insert mode)
| C-w (delete word while in insert mode)
| C-u (delete to beginning of line while in insert mode)
| C-o (run normal mode command while in insert mode)
| s (delete char, insert), r (replace char)
| cc (change line), c$ (change to eol)
| cw (change to eo-word), ciw (change word)

# undo/redo
- u (undo)
- ctrl+r (redo)

# save/quit
- :w (write), :w! (force write), :w a.txt (save as a.txt)
- :q (quit), :q! (force quit)

# navigation
- i (up), j (down)
- h (left), l (right)
- w (fwd 1 word), b (bwd 1 word)
- 0 (beg line), $ (end line)
- ^ (first non blank char on line)
- % (go to close bracket / paren)
- gg (beg of file), G (end of file), 3G (go to line 3)
- H (top screen), M (middle screen), L (bottom screen)
- C-f, C-b (page down/up)
- C-e, C-y (scroll down/up)

# visual mode
- v (visual char mode), V (visual line mode)
- '>','<' (shift text right/left)
- ~ (switch case)

# copy/paste
- p (paste after), P (paste before)
- d (cut)
- d$ (cut to eol), d0 (cut to bol)
- y (copy)
- y$ (copy to eol), y0 (cut to bol)

# indentation
- =% (when on open bracket, indent to close bracket)
- gg=G (indent whole file)

# registers
- "xy (copy to register x)
- "xp (paste from register x)

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
