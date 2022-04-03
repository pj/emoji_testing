#!/bin/bash

rm -rf 'Apple Color Emoji.ttf.sbix.d'
rm -f 'Apple Color Emoji.ttf.sbix.ttf'
rm -rf 'Apple Color Emoji.ttf.sbix.ttf.sbix.d'
java -jar ../bitsnpicas/main/java/BitsNPicas/BitsNPicas.jar extractsbix Apple\ Color\ Emoji.ttf

rsync -a ./resized_memes/* ./Apple\ Color\ Emoji.ttf.sbix.d 

java -jar ../bitsnpicas/main/java/BitsNPicas/BitsNPicas.jar injectsbix Apple\ Color\ Emoji.ttf

java -jar ../bitsnpicas/main/java/BitsNPicas/BitsNPicas.jar extractsbix Apple\ Color\ Emoji.ttf.sbix.ttf
diff -r Apple\ Color\ Emoji.ttf.sbix.d Apple\ Color\ Emoji.ttf.sbix.ttf.sbix.d