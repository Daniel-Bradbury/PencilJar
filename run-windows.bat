rd tmp /s /q
mkdir tmp\PencilJar
xcopy /E /I /Y %cd%\src\universal %cd%\tmp\PencilJar
xcopy /E /I /Y %cd%\src\windows %cd%\tmp\PencilJar
cd tmp\PencilJar
ren main.pde PencilJar.pde
processing-java --sketch="%cd%" --run
cd ..\..