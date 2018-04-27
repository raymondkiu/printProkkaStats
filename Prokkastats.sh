#!/bin/bash
#print the options
usage () {
  echo ""
  echo "This bash script can take in Prokka stats (.txt) and output a table format"
  echo ""
  echo "Usage: $0 [options] prokka.txt"
  echo "Option:"
  echo " -h print usage and exit"
  echo " -a print author and exit"
  echo " -v print version and exit"
  echo ""
  echo "Version 1.0"
  echo "Author: 2018 Raymond Kiu Raymond.Kiu@quadram.ac.uk"
  echo "";
}
version () { echo "version 1.0";}
author () { echo "Author: 2018 Raymond Kiu Raymond.Kiu@quadram.ac.uk";}

while getopts ':r:hav' opt;
do
  case $opt in
    h) usage; exit;;
    a) author; exit;;
    v) version; exit;;
    \?) echo "Invalid option: -$OPTARG" >&2; exit 1;;
    :) echo "Missing option argument for -$OPTARG" >&2; exit 1;;
    *) echo "Unimplemented option: -$OPTARG" >&2; exit 1;;

esac
done

text=$1

contigs=$(grep "contigs" $1|sed 's/contigs: //g')
bases=$(grep "bases" $1|sed 's/bases: //g')
tRNA=$(grep "tRNA" $1|sed 's/tRNA: //g')
rRNA=$(grep "rRNA" $1|sed 's/rRNA: //g')
CDS=$(grep "CDS" $1|sed 's/CDS: //g')
gene=$(grep "gene" $1|sed 's/gene: //g')

echo -n -e "contigs\t"
echo -n -e "bases\t"
echo -n -e "tRNA\t"
echo -n -e "rRNA\t"
echo -n -e "CDS\t"
echo -e "gene"

echo -n -e "$contigs\t"
echo -n -e "$bases\t"
echo -n -e "$tRNA\t"
echo -n -e "$rRNA\t"
echo -n -e "$CDS\t"
echo -e "$gene"
