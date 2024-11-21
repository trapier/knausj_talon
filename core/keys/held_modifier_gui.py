from talon import Module, Context, actions, imgui

# via https://github.com/edvinhellsing/knausj_talon/blob/df21152406305c9ead308a0b5eb17526469d44ea/core/my_customizations/my_customizations.py#L26

modifier = ""
@imgui.open(x=700, y=0)
def gui_hold_modifier(gui: imgui.GUI):
    gui.text(f"Modifier held:")
    gui.line()
    if gui.button("Lift " + modifier):
        actions.key(modifier + ":up")
        actions.user.gui_hold_modifier_toggle(0, modifier)

mod = Module()

@mod.action_class
class Actions:
    def gui_hold_modifier_toggle(flag: int, key_str: str):
        """sdf"""

ctx=Context()

@ctx.action_class("user")
class UserActions:
    def gui_hold_modifier_toggle(flag: int, key_str: str):
        global modifier
        modifier = key_str
        if flag:
            gui_hold_modifier.show()
        else:
            gui_hold_modifier.hide()
