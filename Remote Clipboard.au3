#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### 
$RemoteClipboard = GUICreate("Remote Clipboard", 331, 298, 192, 124)
GUISetBkColor(0xFFFFFF)
$Edit1 = GUICtrlCreateEdit("", 8, 8, 313, 193)
GUICtrlSetBkColor(-1, 0xA6CAF0)
$Edit2 = GUICtrlCreateEdit("", 8, 200, 313, 89, BitOR($ES_AUTOVSCROLL,$ES_AUTOHSCROLL,$ES_WANTRETURN))
GUICtrlSetData(-1, StringFormat("1. Paste text into above box. (plain text only)\r\n2. Select field on remote session to paste\r\n3. Press SHIFT + ALT + A to paste\r\n\r\nESC : Exit \r\nPAUSE\BREAK : Pause"))
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


;[INSTRUCTIONS]----------------------------------------------------------
;
;	[F5] 				TO START SCRIPT
;	[ESC] 				TO EXIT SCRIPT
;------------------------------------------------------------------------

;[KEYBOARD SHORTCUTS]----------------------------------------------------
HotKeySet("{ESC}", "terminate");[ESC] TO EXIT SCRIPT
HotKeySet("{PAUSE}", "pause");[PAUSE/BREAK] PAUSES/RESUMES THE SCRIPT
HotKeySet("!A", "paste");[ALT + A] Remote Paste




While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $Edit2
	EndSwitch
WEnd


Func terminate();[TERMINATE THE SCRIPT]

    Exit
 EndFunc


 Func pause();[PAUSE THE SCRIPT]
    $g_bPaused = Not $g_bPaused
    While $g_bPaused
        Sleep(100)
		GUICtrlSetData ($Button1, "Paused")

        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
 EndFunc


 Func paste()
	$paste = GUICtrlRead($Edit1);[GRAB THE TEXT FROM FIELD]--------------
	Send ($paste)

	EndFunc#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### 
$RemoteClipboard = GUICreate("Remote Clipboard", 331, 298, 192, 124)
GUISetBkColor(0xFFFFFF)
$Edit1 = GUICtrlCreateEdit("", 8, 8, 313, 193)
GUICtrlSetBkColor(-1, 0xA6CAF0)
$Edit2 = GUICtrlCreateEdit("", 8, 200, 313, 89, BitOR($ES_AUTOVSCROLL,$ES_AUTOHSCROLL,$ES_WANTRETURN))
GUICtrlSetData(-1, StringFormat("1. Paste text into above box. (plain text only)\r\n2. Select field on remote session to paste\r\n3. Press SHIFT + ALT + A to paste\r\n\r\nESC : Exit \r\nPAUSE\BREAK : Pause"))
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


;[INSTRUCTIONS]----------------------------------------------------------
;
;	[F5] 				TO START SCRIPT
;	[ESC] 				TO EXIT SCRIPT
;------------------------------------------------------------------------

;[KEYBOARD SHORTCUTS]----------------------------------------------------
HotKeySet("{ESC}", "terminate");[ESC] TO EXIT SCRIPT
HotKeySet("{PAUSE}", "pause");[PAUSE/BREAK] PAUSES/RESUMES THE SCRIPT
HotKeySet("!A", "paste");[ALT + A] Remote Paste




While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $Edit2
	EndSwitch
WEnd


Func terminate();[TERMINATE THE SCRIPT]

    Exit
 EndFunc


 Func pause();[PAUSE THE SCRIPT]
    $g_bPaused = Not $g_bPaused
    While $g_bPaused
        Sleep(100)
		GUICtrlSetData ($Button1, "Paused")

        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
 EndFunc


 Func paste()
	$paste = GUICtrlRead($Edit1);[GRAB THE TEXT FROM FIELD]--------------
	Send ($paste)

	EndFunc
