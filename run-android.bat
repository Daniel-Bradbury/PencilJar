rd tmp /s /q
mkdir tmp\PencilJar
xcopy /E /I /Y %cd%\src\universal %cd%\tmp\PencilJar
xcopy /E /I /Y %cd%\src\android %cd%\tmp\PencilJar
cd tmp\PencilJar
python ../../patch.py
del PATCH
ren main.pde PencilJar.pde
processing %cd%\PencilJar.pde
cd ..\..