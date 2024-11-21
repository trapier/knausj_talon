os: linux
tag: user.tmux
-

mux: "tmux "

#session management
mux attach: 
    insert("tmux attach")
    key(enter)
mux new session: insert("tmux new ")
mux sessions:
    key(ctrl-b)
    key(s)
mux name session:
    key(ctrl-b)
    key($)
mux kill session: insert("tmux kill-session -t ")

#window management
mux new (win | window):
    key(ctrl-b)
    key(c)
mux (win | window) <number>:
    key(ctrl-b)
    key('{number}')
mux (previous | preev) (win | window):
    key(ctrl-b)
    key(p)
mux win back:
    key(ctrl-b)
    key(b)
mux (win | window) left:
    key(ctrl-b)
    key(p)
mux (win | window) right:
    key(ctrl-b)
    key(n)
mux rename (win | window):
    key(ctrl-b)
    key(,)
mux close (win | window):
    key(ctrl-b)
    key(&)

#pane management
mux split horizontal:
    key(ctrl-b)
    key(%)
mux split [vertical]:
    key(ctrl-b)
    key(")
mux [next] pane:
    key(ctrl-b)
    key(o)
mux (pane|move) <user.arrow_key>:
    key(ctrl-b)
    key(arrow_key)
mux (close|kill) pane:
    key(ctrl-b)
    key(x)
mux break pane:
    key(ctrl-b)
    key(!)
mux zoom:
    key(ctrl-b)
    key(z)
mux copy [mode]:
    key(ctrl-b)
    key([)
mux paste:
    key(ctrl-b)
    key(])
#Say a number right after this command, to switch to pane
mux pane numbers:
    key(ctrl-b)
    key(q)
