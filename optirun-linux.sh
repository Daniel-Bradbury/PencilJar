rm -rf tmp
mkdir tmp
mkdir tmp/PencilJar
cp -r src/universal/* tmp/PencilJar
cp -r src/linux/* tmp/PencilJar
cd tmp/PencilJar
python ../../patch.py
rm PATCH
mv main.pde PencilJar.pde
optirun processing-java --sketch="$PWD" --run
cd ../..