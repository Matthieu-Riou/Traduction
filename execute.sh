#!/bin/bash

moses=traduction_automatique/mosesdecoder
tools=Tools

name=$1
config=$2

echo "==============================="
echo "$name"
echo "==============================="
echo

rm -R results/$name
perl $moses/scripts/training/filter-model-given-input.pl results/$name $config $tools/test.fr
$moses/bin/moses -f results/$name/moses.ini < $tools/test.fr > results/$name/results.en
perl $tools/multi-bleu.perl $tools/test.en < results/$name/results.en > results/$name/eval

echo
echo
