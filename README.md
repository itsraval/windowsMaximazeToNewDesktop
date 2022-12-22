# Windows Maximaze To New Desktop as on macOS
This AutoHotkey script tries to replicate the macOS experience for managing windows on multiple desktops in windows 11.


# Commands

## Maximaze Window into new Desktop
<kbd>Ctrl</kbd> + <kbd>M</kbd> <br />
This command has different action based on the current Desktop and the windows in it.
### The window is the only one in the Desktop
- If the window is already maximized, the window will be restored to the previous size.
- The window will be maximized in the same Desktop
### The window is NOT the only one in the Desktop
- The window will be maximized into a new Desktop
- d
- 
Maximaze the current active window into a new Desktop.
If the window 
; Maximaze Window into new Desktop
; If the Window is already max and it is the only one in the desktop it will be restored to the previous size
; Ctrl + M

## Maximaze every Window in current Desktop into new Desktops
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>M</kbd> <br />
Maximaze every Window in current Desktop into new Desktops. <br />
This command needs a few seconds to complete this actions.

## Close empty Desktops
<kbd>Alt</kbd> + <kbd>Z</kbd> <br />
Closes every Desktop with no window open. <br />
This command needs a few seconds to complete this actions.

## Close every Desktop, move all opened Windows to Desktop 1 
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Z</kbd> <br />
Closes every Desktop with or without any Window open. Every Window will be moved to the only remaining Desktop open.


# Requirements

## Dependency
You need to download the zip from this repository to be able to manage to multiple desktops.
https://github.com/FuPeiJiang/VD.ahk
After unpacking the zip you can simply put the folder unzipped folder in the same directory of the "windowsMaximazeToNewDesktop.ahk" file.

```ahk
#Include VD.ahk-class_VD\VD.ahk
```

## Windows: 11
## Language: ahk version 1.1


