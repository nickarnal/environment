# INSERT/DELETE
i (before), I (beg line)
C-c, Esc (exit insert mode)
a (after), A (end line)
o (next line), O (prev line)
x (delete char)
dd (delete line)
dw (delete word)
d0 (delete to bol)
d$ (delete to eol)
di{, di(, di" (delete text inside {}, (), "")
ci{, ci(, ci" (change text inside {}, (), "")
C-t, C-d (insert/remove tab while in insert mode)
C-w (delete word while in insert mode)
C-u (delete to beginning of line while in insert mode)
C-o (run normal mode command while in insert mode)
s (delete char, insert), r (replace char)
cc (change line), c$ (change to eol)
cw (change to eo-word), ciw (change word)

# UNDO/REDO
u (undo)
ctrl+r (redo)

# SAVE/QUIT
:w (write), :w! (force write), :w a.txt (save as a.txt)
:q (quit), :q! (force quit)

# NAVIGATION
i (up), j (down)
h (left), l (right)
w (fwd 1 word), b (bwd 1 word)
0 (beg line), $ (end line)
^ (first non blank char on line)
% (go to close bracket / paren)
gg (beg of file), G (end of file), 3G (go to line 3)
H (top screen), M (middle screen), L (bottom screen)
C-f, C-b (page down/up)
C-e, C-y (scroll down/up)

# VISUAL MODE
v (visual char mode), V (visual line mode)
> (shift text right), > (shift text left)
~ (switch case)

# COPY/PASTE
p (paste after), P (paste before)
d (cut)
d$ (cut to eol), d0 (cut to bol)
y (copy)
y$ (copy to eol), y0 (cut to bol)

# INDENTATION
=% (when on open bracket, indent to close bracket)
gg=G (indent whole file)

# REGISTERS
"xy (copy to register x)
"xp (paste from register x)

# SEARCH
/* (search pattern *)
/\c* (search, case insens.)
/\C* (search, case sens.)
n (next entry), N (prev entry)
:%s/foo/bar/g (find foo, replace with bar)
:%s/foo/bar/gc (same as above w/ confirmation)
:s/foo/bar/g (only on current line)

# TABS
:tabnew file (new tab for file)
gt, :tabn (next tab)
gT, :tabp (prev tab)
#gt (move to tab #)
:tabc (close tab)

# WINDOWS
C-w v (open new vertical window)
C-w s (open new horizontal window)
C-w c (close window)
C-w h,j,k,u (navigate between windows)

LINE NUMBERS
:set number (turn on)
:set nonumber (turn off)

HELP
:help