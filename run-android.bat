rd tmp /s /q
mkdir tmp\PencilJar
xcopy /E /I /Y %cd%\src\universal %cd%\tmp\PencilJar
xcopy /E /I /Y %cd%\src\android %cd%\tmp\PencilJar
cd tmp\PencilJar
ren main.pde PencilJar.pde
processing %cd%\PencilJar.pde
cd ..\..