raise win <word>: 
  key(ctrl-space) 
  sleep(200ms)
  insert("{word}\n")
flip left:     key(super-h)
flip right:    key(super-l)
flip down:     key(super-j)
flip up:       key(super-k)
move flip left:     key(super-shift-h)
move flip right:    key(super-shift-l)
move flip down:     key(super-shift-j)
move flip up:       key(super-shift-k)
desk last:     key(super-p)
desk next:     key(super-n)
desk <number>: key("super-{number}")
move desk last:     key(super-shift-p)
move desk next:     key(super-shift-n)
move desk <number>: key("super-shift-{number}")
resize win: key("super-r")