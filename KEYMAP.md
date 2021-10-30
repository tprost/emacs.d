# Mnemonic Emacs

Let's combine the efficiency of Vim-style hotkeys with mnemonic hotkeys and the  customizability and extensibility of Emacs. 

The idea of having a "normal" mode and an "insert" mode is very helpful! But I don't want to learn all the Vim hotkeys or anything, and therefore using Evil mode seems like overkilll. 


## Core Ideas

Commands mapped to C-<key> should be micro-level commands and they should work in both insert mode and normal mode. This way they are in your muscle memory in either mode, and they are usable in either mode.

## Some keys are simple commands.

k       -> Perform command
C-k     -> Perform command at a micro level 
M-k     -> Perform command at a micro level but with a twist (often the C command reversed) 
C-M-k   -> Perform command at a micro level but with a twist

K       -> Perform a related but different command, often more macro
C-S-k   -> Perform a related but different command at a more micro level
C-M-S-k -> Perform a related but different command at a more macro level

## Some keys are "hydras" or "prefix maps", or a combination of the two, and they open up pandoras box into a variety of possible commands

m       -> DWIM command
M       -> DWIM related but different command

C-m a   -> Perform micro subaction of m command 
C-m b   -> Perform micro subaction of m command 
C-m c   -> Perform micro subaction of m command 

M-m a   -> Perform related but different command subaction
M-m b
M-m c

C-M a   -> 
