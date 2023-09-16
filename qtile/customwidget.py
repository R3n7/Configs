import os
from libqtile import widget
class MyWidget(widget.TextBox):

    def __init__(self, text, **config):
        widget.TextBox.__init__(self, text, **config)
        self.add_callbacks(
            {
                "Button1": self.changebg,
                "Button3": self.changebg1
            }
        )
    def changebg1(self):
        os.system("feh --randomize --bg-fill ~/Pictures/somerepo/wallpapers/all/*")
    def changebg(self):
        os.system("feh --randomize --bg-fill ~/Pictures/wallpapers/*")
