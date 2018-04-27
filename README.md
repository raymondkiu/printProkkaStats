# printProkkaStats
This is a simple Bash script to print a table of Prokka annotation stats (output .txt). After generating Prokka annotations (https://github.com/tseemann/prokka), you will have a txt file stating the stats of annotations including contigs number, bases, tRNA and so on. This script will generate a table (.tsv) for downstream analysis.

# Usage
```
$ ./Prokkastats FILENAME.txt
```
You can save the file by 
```
$ ./Prokkastats FILENAME.txt > NEW_OUTPUT
```
