# Mnemonic Emacs

Let's combine the efficiency of Vim-style hotkeys with mnemonic hotkeys and the  customizability and extensibility of Emacs. 

The idea of having a "normal" mode and an "insert" mode is very helpful! But I don't want to learn all the Vim hotkeys or anything, and therefore using Evil mode seems like overkilll. 


## Core Ideas

Some commands are likely to be useful in insert state and normal state.
Some commands are unlikely to be useful in insert state, and we would like the keys available for other things in insert mode.

### Example 1 (scrolling)

Simple "reversible" command

v   -> Scroll line vertically in window
C-v -> Scroll down
M-v -> Scroll up
C-M-v -> Scrolling hydra

### Example 2 (C-o)

#### Normal state

o     -> hs-toggle-hiding
C-o   -> hs-hide-block
M-o   -> hs-show-block
C-M-o -> hideshow prefix command

#### Insert state

o     -> self-insert-command
C-o   -> open line below
M-o   -> open line above
C-M-o -> ?



## Some keys are simple commands.

k       -> Perform whatever version of command is most convenient
C-k     -> Perform command
M-k     -> Perform command but with a twist (often the reverse)
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
