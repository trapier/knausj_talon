tag: browser
-
(address bar | go address | go url): browser.focus_address()
go home: browser.go_home()
[go] forward: browser.go_forward()
go (back | backward): browser.go_back()
go to {user.website}: browser.go(website)

go private: browser.open_private_window()

bookmark show: browser.bookmarks()
bookmark bar: browser.bookmarks_bar()
bookmark it: browser.bookmark()
bookmark tabs: browser.bookmark_tabs()

(refresh | reload) it: browser.reload()
(refresh | reload) it hard: browser.reload_hard()

show downloads: browser.show_downloads()
show extensions: browser.show_extensions()
show history: browser.show_history()
show cache: browser.show_clear_cache()

dev tools: browser.toggle_dev_tools()

#todo - port to apps
# navigating current page
help: key(?)
scroll tiny down: key(j)
scroll tiny up: key(k)
scroll left: key(h)
scroll right: key(l)
scroll (pop | spring): key(z H)
scroll push: key(z L)
scroll top: key(gg)
scroll (bottom | end): key(G)
(scroll half down | mini page): key(d)
scroll half up: key(u)
[open] link: key(escape f)
[open] link new: key(escape F)
copy link: key(escape y f)
copy (address | url): key(escape y y)
(refresh | reload): browser.reload()
view source: key(escape g s)
insert mode: key(i)
next frame: key(escape g f)
main frame: key(escape g F)
    # navigating to new pages
(open | go) (url | history): key(escape o)
(open | go) (url | history) new: key(escape O)
#(open | go) bookmark: key(escape b)
# (open | go) bookmark new: key(escape B)
    # using find
find mode: key(escape /)
next match: key(n)
previous match: key(N)
    # navigating history
history back: key(escape H)
history forward: key(escape L)
    # manipulating tabs
last visited: key(escape ^)
dupe tab: key(escape y t)
restore: key(escape X)
search tabs: key(escape T)
move to window: key(escape W)
toggle tabs: key(escape f2)
