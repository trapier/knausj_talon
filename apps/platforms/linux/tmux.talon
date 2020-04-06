os: linux
tag: user.tmux
-
mux: "tmux "

#session management
mux new session:
    insert('tmux new ')
mux sessions:
    key(ctrl-.)
    key(s)
mux name session:
    key(ctrl-.)
    key($)
mux find:
    key(ctrl-.)
    key(f)
mux kill session:
    insert('tmux kill-session -t ')
#window management
mux new win:
    key(ctrl-.)
    key(c)
mux win <number>:
    key(ctrl-. )
    key('{number}')
mux preev win:
    key(ctrl-.)
    key(p)
mux next win:
    key(ctrl-.)
    key(n)
mux rename win:
    key(ctrl-.)
    key(,)
mux close win:
    key(ctrl-.)
    key(&)
#pane management
mux split haytch:
    key(ctrl-.)
    key(%)
mux split vert:
    key(ctrl-.)
    key(")
mux next pane:
    key(ctrl-.)
    key(o)
mux move <user.arrow_key>:
    key(ctrl-.)
    key(arrow_key)
mux close pane:
    key(ctrl-.)
    key(x)
#Say a number right after this command, to switch to pane
mux pane numbers:
    key(ctrl-.)
    key(q)
