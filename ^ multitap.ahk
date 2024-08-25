;     ______  _______    ____   ____  ____      _________________  ____ 
;    |      \/       \  |    | |    ||    |    /                 \|    |
;   /          /\     \ |    | |    ||    |    \______     ______/|    |
;  /     /\   / /\     ||    | |    ||    |       \( /    /  )/   |    |
; /     /\ \_/ / /    /||    | |    ||    |  ____  ' |   |   '    |    |
;|     |  \|_|/ /    / ||    | |    ||    | |    |   |   |        |    |
;|     |       |    |  ||    | |    ||    | |    |  /   //        |    |
;|\____\       |____|  /|\___\_|____||____|/____/| /___//         |____|
;| |    |      |    | / | |    |    ||    |     |||`   |          |    |
; \|____|      |____|/   \|____|____||____|_____|/|____|          |____|
;    \(          )/         \(   )/    \(    )/     \(              \(  
;     '          '           '   '      '    '       '               '  
;                                                                       
;                                                                       
; _________________       ____        _____                             
;/                 \ ____|\   \   ___|\    \                            
;\______     ______//    /\    \ |    |\    \                           
;   \( /    /  )/  |    |  |    ||    | |    |                          
;    ' |   |   '   |    |__|    ||    |/____/|                          
;      |   |       |    .--.    ||    ||    ||                          
;     /   //       |    |  |    ||    ||____|/                          
;    /___//        |____|  |____||____|                                 
;   |`   |         |    |  |    ||    |                                 
;   |____|         |____|  |____||____|                                 
;     \(             \(      )/    \(                                   
;      '              '      '      '                                   

; DONT CHANGE ANYTHING IN HERE. @lethalearlicker 8/24/2024

; intro
Msgbox, Multi tap has been loaded.

IniRead, SleepTime, %A_ScriptDir%\settings.txt, Settings, SleepTime, 10
IniRead, ExitKey, %A_ScriptDir%\settings.txt, Settings, ExitKey, ;

Hotkey, %ExitKey%, CloseApp, On

SetBatchLines, -1
SetMouseDelay, -1
f3::suspend
*$LButton::
While GetKeyState("LButton", "P"){
    Click
    Sleep, %SleepTime%
}
Return

{
; exit app function lol
CloseApp:
Msgbox, Closed.
ExitApp
}




