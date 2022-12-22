# Windows Maximaze To New Desktop as on macOS
This AutoHotkey script tries to replicate the macOS experience for managing windows on multiple desktops in Windows 11.
With a few simple shortcuts, you can maximaze a Window directly into a new Desktop and then use the Windows 11 gestures to move around quickly as in macOS. 

# Commands

## Maximaze Window into new Desktop
<kbd>Ctrl</kbd> + <kbd>M</kbd> <br />
This command has different actions based on the current Desktop and the windows in it.
### The window is the only one on the Desktop
- If the window is already maximized, the window will be restored to the previous size.
- The window will be maximized in the same Desktop
### The window is NOT the only one in the Desktop
- The window will be maximized into a new Desktop<br />
This command needs a few seconds to complete this action.

## Maximaze every Window in the current Desktop into new Desktops
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>M</kbd> <br />
Maximaze every Window from the current Desktop into new Desktops. <br />
This command needs a few seconds to complete this action.

## Close empty Desktops
<kbd>Alt</kbd> + <kbd>Z</kbd> <br />
Closes every Desktop with no window open. <br />
This command needs a few seconds to complete this action.

## Close every Desktop, move all opened Windows to Desktop 1 
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Z</kbd> <br />
Closes every Desktop with or without any Window open. Every Window will be moved to the only remaining Desktop open.


# Disclaimer
The script is not perfect!!! <br />
Some commands need a few seconds to complete their actions. <br />
The script is not "glitching" but is performing the action as a normal user will do.<br />
If you have any suggestions or just want to help, I am happy to collaborate. :)

# Requirements

## Dependency
You need to download the zip from this repository to be able to manage to multiple desktops.
https://github.com/FuPeiJiang/VD.ahk
After unpacking the zip you can simply put the folder unzipped folder in the same directory as the "windowsMaximazeToNewDesktop.ahk" file.

```ahk
#Include VD.ahk-class_VD\VD.ahk
```

## OS: Windows 11
## Language: ahk version 1.1
