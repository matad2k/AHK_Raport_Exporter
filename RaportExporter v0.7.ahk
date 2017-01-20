;Skrót to uruchomienia to CTRL+ALT+R
^!r::

;Wybór folderu z testami
FileSelectFolder, WhichFolder

;Dla ktorych rozszerzen ma byc wykonywany skrypt
extensions = ",rmp,seq,otf,hrt,tst,adt,qcm,"

;Wartosci startowe dla zliczania raportow wyeksportowanych i pominiteych
rap_eksp = 0
rap_pom = 0
StartTime := A_TickCount

;Glowna petla programu
loop, %whichFolder%\* , , 1
{
	if A_LoopFileExt in %extensions%
		SplitPath, A_LoopFileLongPath, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive
		IfExist %A_LoopFileDir%\%OutNameNoExt%.rtf
			rap_pom +=1
		else
		{
			export_to_rtf(A_LoopFileDir)
			rap_eksp +=1	
		}	
			
}

ElapsedTime := A_TickCount - StartTime
;Podsumowanie wyeksportowanych Raportow
Elapsed := ElapsedTime/1000
MsgBox Raporty wyeksportowane: %rap_eksp%`nRaporty pominiête: %rap_pom%`n`nCzas wykonania: %Elapsed% s
;Funkcja eksportujaca pojedynczy raport
export_to_rtf(whichFolder)
{
	Run, %WhichFolder%\%A_LoopFileName%
	WinWait, OMICRON, 
	IfWinNotActive, OMICRON, , WinActivate, OMICRON, 
		WinWaitActive, OMICRON, 
		Send, ^r
		WinWait, Ustawienia Raportu, 
	IfWinNotActive, Ustawienia Raportu, , WinActivate, Ustawienia Raportu, 
		WinWaitActive, Ustawienia Raportu, 
		Send, {DOWN  4}{ENTER}
		WinWait, OMICRON, 
	IfWinNotActive, OMICRON, , WinActivate, OMICRON, 
		Send, {ALTDOWN}
		Send, {ALTUP}
		Send, {P}
		Send, {E}
		Send, {R}
		WinWait, Eksport Raportu, 
	IfWinNotActive, Eksport Raportu, , WinActivate, Eksport Raportu, 
		WinWaitActive, Eksport Raportu, 
		ControlFocus, Edit1, Eksport Raportu
		Send, ^x
	Clipboard = %WhichFolder%\%Clipboard%
		Sleep, 200 ms
		Send, ^v
		ControlFocus, ComboBox3, Eksport Raportu
		Send, {Down 3}
		Send, {TAB}{SPACE}
		WinWait, OMICRON, 
	IfWinNotActive, OMICRON, , WinActivate, OMICRON, 
		WinWaitActive, OMICRON, 
		Send, {ALTDOWN}{F4}{ALTUP}
		WinWait, ahk_class #32770, ,0.5
	if ErrorLevel
		return
	else
		Send,{RIGHT}{SPACE}
}