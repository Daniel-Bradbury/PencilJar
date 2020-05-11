rm -rf tmp
mkdir tmp
mkdir tmp/PencilJar
cp -r src/universal/* tmp/PencilJar
cp -r src/windows/* tmp/PencilJar
cd tmp/PencilJar
mv main.pde PencilJar.pde
processing-java --sketch="$PWD" --run
cd ../..