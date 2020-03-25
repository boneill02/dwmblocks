# sweg's dwmblocks

A modular status bar for dwm written in C.

# Modifying Blocks

The statusbar is made from text output from command line programs.
Blocks are added and removed by editing config.def.h and recompiling.
If config.h exists, remove that before compilation as well.

# Signalling Changes

For example, the audio module has the update signal 10 by default.
Thus, running `pkill -RTMIN+10 dwmblocks` will update it.
