echo off
Cls
C:
Cd\
If Not %Sce%.==. Goto OTRA
Echo A - La Aventura Original Primera Parte
Echo O - La Aventura Original Segunda Parte
Echo ÿ
Echo J - El Jabato Primera Parte
Echo K - El Jabato Segunda Parte
Echo ÿ
Echo D - La Diosa de Cozumel
Echo ÿ
Echo W - Word Star
If %R%.==. Echo R - Reloj en la esquina derecha de la pantalla
If Not %R%.==. Echo R - Desconecta el reloj
Echo S - Salir al Sistema Operativo
Echo ÿ
ASK "¨Qu‚ vas a programar? ",DJKAOSWR
If errorlevel 8 Goto RELOJ
If errorlevel 7 Goto WORDSTAR
If errorlevel 6 Goto FIN
If errorlevel 5 Goto DosOriginal
If errorlevel 4 Goto UnoOriginal
If errorlevel 3 Goto DosJabato
If errorlevel 2 Goto UnoJabato
Set Sce=Diosa
Set Prg=La Diosa de Cozumel
Goto Otra
:WORDSTAR
WS
:RELOJ
If %R%.==J. Goto RELOJOFF
Set R=J
Qtime > nul
DAAD
:RELOJOFF
Set R=
Qtime /o
DAAD
:UNOORIGINAL
Set Sce=Origina1
Set Prg=La Aventura Original Primera Parte
Goto Otra
:DOSORIGINAL
Set Sce=Origina2
Set Prg=La Aventura Original Segunda Parte
Goto Otra
:UNOJABATO
Set Sce=Jabato1
Set Prg=El Jabato Primera Parte
Goto Otra
:DOSJABATO
Set Sce=Jabato2
Set Prg=El Jabato Segunda Parte
Goto OTRA
:REOTRA
Echo ÿ
Echo No encuentro %Prg% en el disquette.
Sonido
Echo Pulsa una tecla.
Pause > Nul
:OTRA
Cls
Echo ÿ
Echo Introduce el disco de %Prg% en la disquetera.
Echo ÿ
Ask "Pulsa C para continuar, H para usar la versi¢n en Disco Duro o S para salir ",chs
Cls
If errorlevel 3 Goto FIN
If errorlevel 2 Goto USAHARD
:USAFLOPPY
Cls
If Not Exist a:%sce%.sce Goto REOTRA
Whold a:%sce%.sce c:\daad\data\%sce%.sce I
If errorlevel 3 D
If errorlevel 2 Goto BIEN
Cls
Echo ÿ
Echo La versi¢n en disquette es m s antigua que la del Disco Duro.
Echo Deber¡as utilizar la del Disco Duro.
Echo ÿ
Sonido
Ask "Pulsa D para usar la versi¢n en Disco Duro, F para floppy o S para salir ",dfs
If errorlevel 3 Goto FIN
If Not errorlevel 2 D
:BIEN
Copy \daad\data\%sce%.sce \daad\databack\%sce%.sce > nul
Copy a:%sce%.sce \daad\data\%sce%.sce > nul
D
:USAHARD
If Not Exist a:%sce%.sce D
Whold a:%sce%.sce c:\daad\data\%sce%.sce I
If Not errorlevel 2 D
Cls
Echo ÿ
Echo La versi¢n en disco duro es m s antigua que la del floppy.
Echo Deber¡as utilizar la del floppy.
Echo ÿ
Sonido
Ask "Pulsa F para usar floppy, H para usar la versi¢n en Disco Duro o S para salir ",fhs
If errorlevel 3 Goto FIN
If errorlevel 2 D
Goto USAFLOPPY
:FIN
Cls
Set Prg=
Set Sce=
Fin
