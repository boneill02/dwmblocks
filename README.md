# sweg's dwmblocks

A modular status bar for dwm written in C.

# modifying blocks

The statusbar is made from text output from commandline programs.
Blocks are added and removed by editing the blocks.h header file.

# signalling changes

For example, the audio module has the update signal 10 by default.
Thus, running `pkill -RTMIN+10 dwmblocks` will update it.
