rd tmp /s /q
mkdir tmp\PencilJar
xcopy /E /I %cd%\src\universal %cd%\tmp\PencilJar
cd tmp\PencilJar
ren main.pde PencilJar.pde
processing-java --sketch="%cd%" --run
cd ..\..