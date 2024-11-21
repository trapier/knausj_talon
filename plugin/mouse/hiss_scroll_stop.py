from talon import Context, Module, actions

from typing import Optional

# adopted from @saidelike and @Marcel via
# - https://talonvoice.slack.com/archives/C7ENXA7C4/p1704463582553039?thread_ts=1704306882.927949&cid=C7ENXA7C4
# - https://github.com/saidelike/saidelike_talon/blob/main/core/parrot/hiss_shush.py
# - https://github.com/saidelike/saidelike_talon/blob/main/core/parrot/hiss_shush.talon

mod = Module()
mod.tag("hiss_scroll_disabled", "Indicates that the hiss noises are disabled")

ctx = Context()

# if hiss/shush noises are currently disabled
hiss_scroll_disabled = True

def _hiss_scroll_disable():
    global hiss_scroll_disabled
    hiss_scroll_disabled = True
    ctx.tags = ["user.hiss_scroll_disabled"]
    print('hiss disabled')

def _hiss_scroll_enable():
    global hiss_scroll_disabled
    hiss_scroll_disabled = False
    ctx.tags = []

@mod.action_class
class Actions:
    def hiss_scroll_disable():
        """Disable hiss scrolling"""
        _hiss_scroll_disable()

    def hiss_scroll_enable():
        """Enable hiss scrolling"""
        _hiss_scroll_enable()

    def hiss_scroll_toggle():
        """Disable hiss scrolling"""
        global hiss_scroll_disabled
        if hiss_scroll_disabled:
            _hiss_scroll_enable()
        else:
            _hiss_scroll_disable()
