Echo off
If Not %1.==. DAAD
If %Sce%.==. DAAD
C:
Cd\Daad\Data
If Exist %Sce%.ddb Goto TRIPRE
:EDITOR
Qe %Sce%.Sce
Dc %Sce%.Sce
If Not Exist %Sce%.Ddb Goto SALIDA
Copy %Sce%.Sce D:%Sce%.Sce		   > Nul
:PROBAR
If Not Exist %Sce%.Chr Goto NASKGRAF
Echo ÿ
Ask "¨Con gr ficos o sin gr ficos? (C/S) ",cs
If errorlevel 2 Goto SINGRAF
:NASKGRAF
Interp %Sce%
Goto TRIPRE
:SINGRAF
Qtime/o
Ren %sce%.Chr %sce%.Ngr
Interp %Sce%
Ren %sce%.Ngr %sce%.Chr
If Not %R%.==. Qtime>Nul
:TRIPRE
Echo ÿ
Ask "¨Editor, Probar o Sistema Operativo? (E/P/S) ", SOPE
If Errorlevel 4 Goto EDITOR
Cls
If Errorlevel 3 Goto PROBAR
Goto SISTEMA
:SALIDA
Echo ÿ
Ask "¨Editor o Sistema Operativo? (E/S) ", SOE
If Errorlevel 3 Goto EDITOR
:PIDEFLOPPY
Echo Introduce el disco de trabajo de %Prg%.
Sonido
Echo Pulsa una tecla.
Pause > nul
:SISTEMA
Cls
Echo ÿ
If Not Exist A:%Sce%.sce Goto PIDEFLOPPY
Copy %Sce%.Sce ..\Databack\%Sce%.Sce	   > Nul
Copy %Sce%.Sce A:%Sce%.Sce		   > Nul
Echo He grabado %Prg% en el disco de trabajo.
:FIN
Cd\
Set Prg=
Set Sce=
Fin
