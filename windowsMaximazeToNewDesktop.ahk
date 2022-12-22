#Include VD.ahk-class_VD\VD.ahk
    
countWindowsInCurrentDesktop(){
    DetectHiddenWindows, Off
    WinGet windows, List
    count := -1
    Loop %windows%
    {
        id := windows%A_Index%
        WinGetTitle wt, ahk_id %id%
        if (wt){
            count++
            r .= wt . "`n"
        }
    }
    ; MsgBox, %r%
    return count
}

isMax(){
    WinGet, isMax, MinMax, A
    return isMax
}

makeNewDesktop(){
    winDeskNum := VD.getCurrentDesktopNum()
    Send, {CtrlDown}#d{CtrlUp}; Ctrl+Win+D
    VD.goToDesktopNum(winDeskNum)
}

moveWinToNewDesktop(){
    makeNewDesktop()
    nDesktops := VD.getCount()
    VD.MoveWindowToDesktopNum("A", nDesktops)
    VD.goToDesktopNum(nDesktops)
    WinMaximize, A
}


moveWinToNewDesktopIteration(){
    WinMaximize, A
    makeNewDesktop()
    nDesktops := VD.getCount()
    VD.MoveWindowToDesktopNum("A", nDesktops)
}

; Maximaze Window into new Desktop
; If the Window is already max and it is the only one in the desktop it will be restored to the previous size
; Ctrl + M
^m::
If (isMax() != 1){  
    if (countWindowsInCurrentDesktop()<2){
        WinMaximize, A
    }else{
        moveWinToNewDesktop()
    }
}else{
    if (countWindowsInCurrentDesktop()>1){
        moveWinToNewDesktop()
    }else{
        WinRestore, A
    }
}
Return

; Maximaze every Window in current Desktop into new Desktops
; Alt + Ctrl + M
!^m::
countDesktops := VD.getCount()
counterWindows := countWindowsInCurrentDesktop()
sizeToReach := countDesktops + counterWindows -1
while countDesktops < sizeToReach{
    moveWinToNewDesktopIteration()
    countDesktops++
}
Return

; Remove empty Desktops
; Alt + Z
!z::
numDesktops := VD.getCount()
while numDesktops>0 {
    VD.goToDesktopNum(numDesktops)
    if(countWindowsInCurrentDesktop()==0){
        VD.removeDesktop(numDesktops)
    }  
    numDesktops := numDesktops - 1
}
Return

; Remove every Desktop, go to Desktop 1
; Every Windows will be in Desktop 1
; Ctrl + Alt + Z
^!z::
VD.goToDesktopNum(1)
numDesktops := VD.getCount()
while numDesktops>1 {
    VD.removeDesktop(numDesktops)
    numDesktops := numDesktops - 1
}
Return